#!/bin/bash

# Load database connection info
source .env

# If psql is not installed, then exit
if ! command -v psql > /dev/null; then
  echo "PostgreSQL is required..."
  read
fi


# Read query into a variable
sql="CREATE DATABASE test_db_1
    WITH
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;"

echo "Creating database"

# Connect to the database, run the query, then disconnect
PGPASSWORD="$POSTGRES_PASSWORD" psql -t -A \
-h "$POSTGRES_HOST" \
-p "$POSTGRES_PORT" \
-U "$POSTGRES_USERNAME" \
-c "$sql" \

echo "Enter to quiet..."
read
