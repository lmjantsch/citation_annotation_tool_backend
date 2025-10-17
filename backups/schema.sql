

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pg_net" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE OR REPLACE FUNCTION "public"."calculate_and_store_iaa"("citation_id_in" "uuid") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
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
$$;


ALTER FUNCTION "public"."calculate_and_store_iaa"("citation_id_in" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."create_profile_for_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$BEGIN
  INSERT INTO public.users (id, email)
  SELECT
    new.id,
    new.email;
  RETURN new;
END;$$;


ALTER FUNCTION "public"."create_profile_for_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."iaa_trigger_function"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
DECLARE
    citation_id_to_update uuid;
BEGIN
    citation_id_to_update := OLD.citation_id;
    PERFORM calculate_and_store_iaa(citation_id_to_update);

    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."iaa_trigger_function"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_annotation_count"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$BEGIN
  -- Your trigger logic here (e.g., the UPDATE on public.citations)
  UPDATE public.citations
    SET annotation_count = (
        SELECT COUNT(id)
        FROM public.annotations
        WHERE citation_id = OLD.citation_id AND
        (annotation_location @> ARRAY[1] OR annotation_location @> ARRAY[2] OR annotation_location @> ARRAY[3])
      )
    WHERE id = OLD.citation_id;
  RETURN NEW;
END;$$;


ALTER FUNCTION "public"."update_annotation_count"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."annotations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "user_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "citation_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "status" "text" DEFAULT 'outstanding'::"text" NOT NULL,
    "comment" "text",
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "annotation_location" integer[]
);


ALTER TABLE "public"."annotations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."citations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "paragraph_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "marker_location" smallint NOT NULL,
    "annotation_count" smallint,
    "iaa_macro" real,
    "type" "text" NOT NULL,
    "iaa_total" real,
    "iaa_inf" real,
    "iaa_perc" real,
    "iaa_back" real
);


ALTER TABLE "public"."citations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."cited_documents" (
    "citation_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "document_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


ALTER TABLE "public"."cited_documents" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."documents" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "title" "text",
    "authors" "text",
    "pub_year" "text",
    "abstract" "text"
);


ALTER TABLE "public"."documents" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."iaa_aggregate" AS
 SELECT "round"(("avg"("citations"."iaa_macro"))::numeric, 3) AS "avg_iaa_macro",
    "round"(("avg"("citations"."iaa_total"))::numeric, 3) AS "avg_iaa_total",
    "round"(("avg"("citations"."iaa_inf"))::numeric, 3) AS "avg_iaa_inf",
    "round"(("avg"("citations"."iaa_perc"))::numeric, 3) AS "avg_iaa_perc",
    "round"(("avg"("citations"."iaa_back"))::numeric, 3) AS "avg_iaa_back"
   FROM "public"."citations";


ALTER TABLE "public"."iaa_aggregate" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."paragraphs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "section_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "text" "text" NOT NULL
);


ALTER TABLE "public"."paragraphs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."profiles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "first_name" character varying,
    "last_name" character varying,
    "role" character varying DEFAULT 'annotator'::character varying NOT NULL,
    "email" character varying
);


ALTER TABLE "public"."profiles" OWNER TO "postgres";


CREATE OR REPLACE VIEW "public"."progress_count" AS
 SELECT "annotations"."user_id",
    "annotations"."status",
    "count"(*) AS "count"
   FROM "public"."annotations"
  GROUP BY "annotations"."status", "annotations"."user_id";


ALTER TABLE "public"."progress_count" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."sections" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "section_title" "text",
    "document_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


ALTER TABLE "public"."sections" OWNER TO "postgres";


ALTER TABLE ONLY "public"."annotations"
    ADD CONSTRAINT "annotations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."citations"
    ADD CONSTRAINT "citations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."cited_documents"
    ADD CONSTRAINT "cited_documents_pkey" PRIMARY KEY ("citation_id", "document_id");



ALTER TABLE ONLY "public"."documents"
    ADD CONSTRAINT "documents_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."paragraphs"
    ADD CONSTRAINT "paragraphs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."sections"
    ADD CONSTRAINT "sections_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



CREATE OR REPLACE TRIGGER "trg_update_annotation_count_pg" AFTER UPDATE ON "public"."annotations" FOR EACH ROW EXECUTE FUNCTION "public"."update_annotation_count"();



CREATE OR REPLACE TRIGGER "trigger_update_iaa" AFTER UPDATE ON "public"."annotations" FOR EACH ROW EXECUTE FUNCTION "public"."iaa_trigger_function"();



ALTER TABLE ONLY "public"."annotations"
    ADD CONSTRAINT "annotations_citation_id_fkey" FOREIGN KEY ("citation_id") REFERENCES "public"."citations"("id");



ALTER TABLE ONLY "public"."annotations"
    ADD CONSTRAINT "annotations_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."citations"
    ADD CONSTRAINT "citations_paragraph_id_fkey" FOREIGN KEY ("paragraph_id") REFERENCES "public"."paragraphs"("id");



ALTER TABLE ONLY "public"."cited_documents"
    ADD CONSTRAINT "cited_documents_citation_id_fkey" FOREIGN KEY ("citation_id") REFERENCES "public"."citations"("id");



ALTER TABLE ONLY "public"."cited_documents"
    ADD CONSTRAINT "cited_documents_document_id_fkey" FOREIGN KEY ("document_id") REFERENCES "public"."documents"("id");



ALTER TABLE ONLY "public"."paragraphs"
    ADD CONSTRAINT "paragraphs_section_id_fkey" FOREIGN KEY ("section_id") REFERENCES "public"."sections"("id");



ALTER TABLE ONLY "public"."sections"
    ADD CONSTRAINT "sections_document_id_fkey" FOREIGN KEY ("document_id") REFERENCES "public"."documents"("id");



CREATE POLICY "Annotations are viewable by owners, reviewers, and admins." ON "public"."annotations" FOR SELECT USING (((( SELECT "auth"."uid"() AS "uid") = "user_id") OR ((( SELECT "profiles"."role"
   FROM "public"."profiles"
  WHERE ("profiles"."id" = ( SELECT "auth"."uid"() AS "uid"))))::"text" = ANY (ARRAY[('admin'::character varying)::"text", ('reviewer'::character varying)::"text"]))));



CREATE POLICY "Cited documents are viewable by everyone." ON "public"."cited_documents" FOR SELECT USING (true);



CREATE POLICY "Documents are viewable by everyone." ON "public"."documents" FOR SELECT USING (true);



CREATE POLICY "Paragraphs are viewable by everyone." ON "public"."paragraphs" FOR SELECT USING (true);



CREATE POLICY "Public profiles are viewable by everyone." ON "public"."profiles" FOR SELECT USING (true);



CREATE POLICY "References are viewable by everyone." ON "public"."citations" FOR SELECT USING (true);



CREATE POLICY "Sections are viewable by everyone." ON "public"."sections" FOR SELECT USING (true);



CREATE POLICY "Users can update own Annotations." ON "public"."annotations" FOR UPDATE USING ((( SELECT "auth"."uid"() AS "uid") = "user_id"));



ALTER TABLE "public"."annotations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."citations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."cited_documents" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."documents" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."paragraphs" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."profiles" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."sections" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";





GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";


























































































































































































GRANT ALL ON FUNCTION "public"."calculate_and_store_iaa"("citation_id_in" "uuid") TO "anon";
GRANT ALL ON FUNCTION "public"."calculate_and_store_iaa"("citation_id_in" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."calculate_and_store_iaa"("citation_id_in" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."create_profile_for_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."create_profile_for_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_profile_for_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."iaa_trigger_function"() TO "anon";
GRANT ALL ON FUNCTION "public"."iaa_trigger_function"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."iaa_trigger_function"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_annotation_count"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_annotation_count"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_annotation_count"() TO "service_role";


















GRANT ALL ON TABLE "public"."annotations" TO "anon";
GRANT ALL ON TABLE "public"."annotations" TO "authenticated";
GRANT ALL ON TABLE "public"."annotations" TO "service_role";



GRANT ALL ON TABLE "public"."citations" TO "anon";
GRANT ALL ON TABLE "public"."citations" TO "authenticated";
GRANT ALL ON TABLE "public"."citations" TO "service_role";



GRANT ALL ON TABLE "public"."cited_documents" TO "anon";
GRANT ALL ON TABLE "public"."cited_documents" TO "authenticated";
GRANT ALL ON TABLE "public"."cited_documents" TO "service_role";



GRANT ALL ON TABLE "public"."documents" TO "anon";
GRANT ALL ON TABLE "public"."documents" TO "authenticated";
GRANT ALL ON TABLE "public"."documents" TO "service_role";



GRANT ALL ON TABLE "public"."iaa_aggregate" TO "anon";
GRANT ALL ON TABLE "public"."iaa_aggregate" TO "authenticated";
GRANT ALL ON TABLE "public"."iaa_aggregate" TO "service_role";



GRANT ALL ON TABLE "public"."paragraphs" TO "anon";
GRANT ALL ON TABLE "public"."paragraphs" TO "authenticated";
GRANT ALL ON TABLE "public"."paragraphs" TO "service_role";



GRANT ALL ON TABLE "public"."profiles" TO "anon";
GRANT ALL ON TABLE "public"."profiles" TO "authenticated";
GRANT ALL ON TABLE "public"."profiles" TO "service_role";



GRANT ALL ON TABLE "public"."progress_count" TO "anon";
GRANT ALL ON TABLE "public"."progress_count" TO "authenticated";
GRANT ALL ON TABLE "public"."progress_count" TO "service_role";



GRANT ALL ON TABLE "public"."sections" TO "anon";
GRANT ALL ON TABLE "public"."sections" TO "authenticated";
GRANT ALL ON TABLE "public"."sections" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;
