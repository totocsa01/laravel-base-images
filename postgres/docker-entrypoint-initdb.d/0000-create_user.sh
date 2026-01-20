#!/bin/bash
set -e

# DB_PASSWORD from docker secret.
DB_PASSWORD=$(cat /run/secrets/db_password)

# Create a non-superuser user. It will be database owner.
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  CREATE USER "$DB_USERNAME" WITH PASSWORD '${DB_PASSWORD}';
  CREATE DATABASE "$DB_DATABASE" OWNER "$DB_USERNAME";
  GRANT ALL PRIVILEGES ON DATABASE "$DB_DATABASE" TO "$DB_USERNAME";
EOSQL

printf "$DB_USERNAME and $DB_DATABASE created.\n"
