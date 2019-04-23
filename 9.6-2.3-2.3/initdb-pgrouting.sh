#!/bin/sh
set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Add pgRouting Functions to the database
psql --dbname="$POSTGRES_DB" <<EOSQL
CREATE EXTENSION postgis;
CREATE EXTENSION pgrouting;
EOSQL
