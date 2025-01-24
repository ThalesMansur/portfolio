#!/bin/bash

#Define PSQL variable
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

guess_game() {
  CORRECT_ANSWER=$((RANDOM % 1000 + 1))
  echo "Guess the secret number between 1 and 1000:"
  TRY_COUNT=0

  while true; do
    read USER_GUESS

    # Check if input is a number
    if ! [[ "$USER_GUESS" =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
      continue
    fi

    TRY_COUNT=$((TRY_COUNT + 1))

    if [ "$USER_GUESS" -eq "$CORRECT_ANSWER" ]; then
      echo "You guessed it in $TRY_COUNT tries. The secret number was $CORRECT_ANSWER. Nice job!"
      if [[ -z $1 ]]
      then
        ADD_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME_INPUT');")
        USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME_INPUT';")
      fi
      ADD_GAME_RESULT=$($PSQL "INSERT INTO games(user_id,tries) VALUES($USER_ID,$TRY_COUNT);")
      break
    elif [ "$USER_GUESS" -gt "$CORRECT_ANSWER" ]; then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
  done
}

#Prompt and read username
echo -e "\nEnter your username:"
read USERNAME_INPUT

#Get USERNAME from the users table
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME_INPUT'")

#If user doesn't exist
if [[ $USER_ID ]]
then
  GAME_COUNT=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = '$USER_ID';")
  BEST_RESULT=$($PSQL "SELECT MIN(tries) FROM games WHERE user_id = $USER_ID;")
  echo "Welcome back, $USERNAME_INPUT! You have played $GAME_COUNT games, and your best game took $BEST_RESULT guesses."
else
  echo "Welcome, $USERNAME_INPUT! It looks like this is your first time here."
fi

guess_game $USER_ID