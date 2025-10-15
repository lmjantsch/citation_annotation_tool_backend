CREATE OR REPLACE FUNCTION calculate_and_store_iaa(citation_id_in uuid)
RETURNS VOID AS $$
DECLARE
    all_locations INT[][];
    loc_count INTEGER;
    i INTEGER;
    j INTEGER;
    actual_array INT[];
    predicted_array INT[];
    pair_f1_macro FLOAT;
    total_f1_macro FLOAT := 0.0;
    total_f1_total FLOAT := 0.0;
    total_f1_cls FLOAT[] := ARRAY[0.0, 0.0, 0.0];
    pair_count INTEGER := 0;

    -- Variables for per-class F1 calculation
    cls INTEGER;
    tp FLOAT;
    fp FLOAT;
    fn FLOAT;
    precision FLOAT;
    recall FLOAT;
    f1_class FLOAT;
    f1_total_for_pair FLOAT;

BEGIN
    -- 1. Gather all annotation for the given citation id
    SELECT ARRAY_AGG(annotation_location)
    INTO all_locations
    FROM public.annotations
    WHERE citation_id = citation_id_in
      AND (
           annotation_location @> ARRAY[1] OR 
           annotation_location @> ARRAY[2] OR 
           annotation_location @> ARRAY[3]
          );
    loc_count := ARRAY_LENGTH(all_locations, 1);

    -- 2. Return NULL if there is less then two annotations
    IF loc_count IS NULL OR loc_count < 2 THEN
        UPDATE public.citations SET iaa_macro = NULL WHERE id = citation_id_in;
        RETURN;
    END IF;

    -- 3. Iterate over all possible pairs of annotations
    FOR i IN 1..loc_count LOOP
        FOR j IN (i + 1)..loc_count LOOP
            actual_array := all_locations[i:i][:];
            predicted_array := all_locations[j:j][:];

            -- Check array length
            IF array_length(actual_array, 1) <> array_length(predicted_array, 1) THEN
                RAISE WARNING 'Skipping annotation pair for citation_id % due to mismatched array lengths.', citation_id_in;
                CONTINUE;
            END IF;

            pair_count := pair_count + 1;
            f1_total_for_pair := 0.0;

            -- Iterate over each class in array
            FOREACH cls IN ARRAY ARRAY[0, 1, 2, 3]
            LOOP
                IF cls = 0 THEN
                    -- Calculate TP, FP, and FN for iaa_total
                        SELECT
                            COUNT(*) FILTER (WHERE actual.value <> cls AND predicted.value <> cls) AS tp,
                            COUNT(*) FILTER (WHERE actual.value = cls AND predicted.value <> cls) AS fp,
                            COUNT(*) FILTER (WHERE actual.value <> cls AND predicted.value = cls) AS fn
                        INTO tp, fp, fn
                        FROM
                            UNNEST(actual_array) WITH ORDINALITY AS actual(value, idx)
                        JOIN
                            UNNEST(predicted_array) WITH ORDINALITY AS predicted(value, idx) ON actual.idx = predicted.idx;

                    -- Calculate Precision, Recall, and F1
                    precision := CASE WHEN (tp + fp) = 0 THEN 0.0 ELSE tp / (tp + fp) END;
                    recall := CASE WHEN (tp + fn) = 0 THEN 0.0 ELSE tp / (tp + fn) END;
                    f1_class := CASE WHEN (precision + recall) = 0 THEN 0.0 ELSE 2 * (precision * recall) / (precision + recall) END;

                    total_f1_total := total_f1_total + f1_class;
                ELSE
                    IF NOT (actual_array @> ARRAY[cls]) AND NOT (predicted_array @> ARRAY[cls]) THEN
                        f1_class := 1.0;
                    ELSE
                        -- Calculate TP, FP, and FN for iaa_macro, iaa_inf, iaa_perc, iaa_back
                        SELECT
                            COUNT(*) FILTER (WHERE actual.value = cls AND predicted.value = cls) AS tp,
                            COUNT(*) FILTER (WHERE actual.value <> cls AND predicted.value = cls) AS fp,
                            COUNT(*) FILTER (WHERE actual.value = cls AND predicted.value <> cls) AS fn
                        INTO
                            tp, fp, fn
                        FROM
                            UNNEST(actual_array) WITH ORDINALITY AS actual(value, idx)
                        JOIN
                            UNNEST(predicted_array) WITH ORDINALITY AS predicted(value, idx) ON actual.idx = predicted.idx;
   
                        -- Calculate Precision, Recall, and F1
                        precision := CASE WHEN (tp + fp) = 0 THEN 0.0 ELSE tp / (tp + fp) END;
                        recall := CASE WHEN (tp + fn) = 0 THEN 0.0 ELSE tp / (tp + fn) END;
                        f1_class := CASE WHEN (precision + recall) = 0 THEN 0.0 ELSE 2 * (precision * recall) / (precision + recall) END;
                    END IF;
                    
                    f1_total_for_pair := f1_total_for_pair + f1_class;
                    total_f1_cls[cls] := total_f1_cls[cls] + f1_class;
                END IF;
            END LOOP;

            -- average f1_total_for_pair
            pair_f1_macro := f1_total_for_pair / 3.0;
            total_f1_macro := total_f1_macro + pair_f1_macro;
        END LOOP;
    END LOOP;

    -- 4. Update table with final F1 scores across all pairs
    IF pair_count > 0 THEN
        -- update iaa_macro
        UPDATE public.citations
        SET 
            iaa_macro = ROUND((total_f1_macro / pair_count)::NUMERIC, 3)::FLOAT,
            iaa_total = ROUND((total_f1_total / pair_count)::NUMERIC, 3)::FLOAT,
            iaa_inf = ROUND((total_f1_cls[1] / pair_count)::NUMERIC, 3)::FLOAT,
            iaa_perc = ROUND((total_f1_cls[2] / pair_count)::NUMERIC, 3)::FLOAT,
            iaa_back = ROUND((total_f1_cls[3] / pair_count)::NUMERIC, 3)::FLOAT
        WHERE id = citation_id_in;
        
    ELSE
        -- handle cases where all pair are skipped
        UPDATE public.citations
        SET
            iaa_macro = NULL,
            iaa_total = NULL,
            iaa_inf   = NULL,
            iaa_perc  = NULL,
            iaa_back  = NULL
        WHERE id = citation_id_in;
    END IF;

END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
