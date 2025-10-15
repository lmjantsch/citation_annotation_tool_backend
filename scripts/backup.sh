CONNECTION_STRING=postgresql://postgres:postgres@localhost:54322/postgres

supabase db dump --db-url $CONNECTION_STRING -f ./backups/roles.sql --role-only
supabase db dump --db-url $CONNECTION_STRING -f ./backups/schema.sql
supabase db dump --db-url $CONNECTION_STRING -f ./backups/data.sql --data-only --use-copy