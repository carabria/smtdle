#! /bin/bash
PSQL="psql --username=postgres --dbname=smtdle -t --no-align -c"
TRUNCATE=$($PSQL"TRUNCATE demons RESTART IDENTITY")
echo $TRUNCATE
cat data.csv | while IFS=',' read NAME ALIGNMENT_ONE ALIGNMENT_TWO MYTHOLOGY AFFINITY_ONE AFFINITY_TWO RACE, STARTING_LEVEL
do
if [[ $NAME != name ]]
then
    DEMON_ID=$($PSQL "SELECT demon_id FROM demons WHERE name='$NAME'")
    if [[ -z $DEMON_ID ]]
    then
        INSERT_DEMON_RESULT=$($PSQL "INSERT INTO demons(name, alignment_one, alignment_two, mythology, affinity_one, affinity_two, race, starting_level) VALUES('$NAME', '$ALIGNMENT_ONE', '$ALIGNMENT_TWO', '$MYTHOLOGY', '$AFFINITY_ONE', '$AFFINITY_TWO', '$RACE', $STARTING_LEVEL)")
        echo $INSERT_DEMON_RESULT
        DEMON_ID=$($PSQL "SELECT demon_id FROM demons WHERE name='$NAME'")
    fi
fi
done    
done