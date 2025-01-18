#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

function MAIN_MENU (){
  if [[ $1 ]]
  then
    echo -e "$1"
  else
    echo -e "\n~~~~~ MY SALON ~~~~~\n"
    echo -e "Welcome to My Salon, how can I help you?\n"
  fi
  SERVICE_SELECTION
}

function SERVICE_SELECTION () {
  SERVICE_OPTIONS=$($PSQL "SELECT service_id, name FROM services;")

  echo "$SERVICE_OPTIONS" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  read SERVICE_ID_SELECTED
  SERVICE_SELECTED_RESULT=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED" | sed 's/^ *//;s/ *$//')
  if [[ -z $SERVICE_SELECTED_RESULT ]]
  then
    MAIN_MENU "\nI could not find that service. What would you like today?"
    return
  fi

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'" | sed 's/^ *//;s/ *$//')

  if [[ -z "$CUSTOMER_NAME" ]]
  then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  echo -e "\nWhat time would you like your $SERVICE_SELECTED_RESULT, $CUSTOMER_NAME?"
  read SERVICE_TIME

  INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) 
                                      VALUES((SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'), 
                                             $SERVICE_ID_SELECTED, 
                                             '$SERVICE_TIME')")
  echo -e "\nI have put you down for a $SERVICE_SELECTED_RESULT at $SERVICE_TIME, $CUSTOMER_NAME."
}


MAIN_MENU