#!/bin/bash
curl --include --request DELETE http://localhost:3000/games/$ID \
  --header "Authorization: Token token=$TOKEN"
