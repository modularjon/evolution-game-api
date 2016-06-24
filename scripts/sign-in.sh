#!/bin/bash
EMAIL=jon PASSWORD=p \
curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data "{
    \"credentials\": {
      \"email\": \"$EMAIL\",
      \"password\": \"$PASSWORD\"
    }
  }"

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data "{
    \"credentials\": {
      \"email\": \"jon\",
      \"password\": \"p\"
    }
  }"
