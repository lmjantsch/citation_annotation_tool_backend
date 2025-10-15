CONNECTION_STRING=postgresql://postgres:postgres@localhost:54322/postgres

psql \
  --single-transaction \
  --variable ON_ERROR_STOP=1 \
  --file ./backups/roles.sql \
  --file ./backups/schema.sql \
  --command 'SET session_replication_role = replica' \
  --file ./backups/data.sql \
  --dbname $CONNECTION_STRING