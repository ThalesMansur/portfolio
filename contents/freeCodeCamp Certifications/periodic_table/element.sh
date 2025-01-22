#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo -e "Please provide an element as an argument."
  exit 0
else
  RESULT=$($PSQL "SELECT
                    'The element with atomic number ' || e.atomic_number ||
                    ' is ' || e.name || ' (' || e.symbol || '). It''s a ' || t.type ||
                    ', with a mass of ' || p.atomic_mass || ' amu. ' ||
                    e.name || ' has a melting point of ' || p.melting_point_celsius ||
                    ' celsius and a boiling point of ' || p.boiling_point_celsius || ' celsius.'
                  FROM elements AS e
                  LEFT JOIN properties AS p
                  ON e.atomic_number = p.atomic_number
                  LEFT JOIN types as t
                  ON t.type_id = p.type_id
                  WHERE CAST(e.atomic_number AS TEXT) = '$1'
                    OR LOWER(e.symbol) = LOWER('$1')
                    OR LOWER(e.name) = LOWER('$1')
                  LIMIT 1;
")
fi

if [[ -z $RESULT ]]
then
  echo I could not find that element in the database.
else
  echo $RESULT
fi
