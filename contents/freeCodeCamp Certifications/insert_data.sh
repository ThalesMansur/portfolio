#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# echo $($PSQL "ALTER SEQUENCE teams_team_id_seq RESTART WITH 1")
# echo $($PSQL "ALTER SEQUENCE games_game_id_seq RESTART WITH 1")
# echo $($PSQL "TRUNCATE teams, games")


cat games.csv | while IFS=',' read YEAR ROUND WIN OPP WIN_GOAL OPP_GOAL
do
  if [[ $WIN != 'winner' ]] 
  then
    #Find winner team_id in teams
    WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
    #If not found
    if [[ -z $WINNER ]]
    then
    #Add team to teams
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WIN')")
    fi
  fi

  #Find opposing team_id in teams
  if [[ $OPP != 'opponent' ]] 
  then
    OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")
    #If not found
    if [[ -z $OPPONENT ]]
    then
    #Add team to teams
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPP')")
    fi
  fi

  #Grab winner and opposing team_id
  WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
  OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")

  #Add all columns
  if [[ ! -z $WINNER ]]
  then
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR, '$ROUND', $WINNER, $OPPONENT, '$WIN_GOAL','$OPP_GOAL')")
  fi

done