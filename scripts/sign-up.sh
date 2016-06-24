#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data "{
   \"credentials\": {
     \"email\": \"$EMAIL\",
     \"password\": \"$PASSWORD\",
     \"password_confirmation\": \"$PASSWORD\"
   }
 }"

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "jon",
      "password": "p",
      "password_confirmation": "p"
    }
  }'
