#!/bin/bash
#Log in
PSQL="psql --username=postgres --dbname=smtdle -t --no-align -c"
# Truncate table to have clean data
$PSQL "TRUNCATE demons RESTART IDENTITY"
# Bulk load data.CSV into the demons table
$PSQL "\copy demons(name, alignment_one, alignment_two, mythology, race, starting_level) FROM 'data.csv' WITH CSV HEADER"