curl --include --request PATCH http://localhost:3000/games/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data "{
    \"game\": {
        \"game_solved\": \"true\"
    }
  }"
