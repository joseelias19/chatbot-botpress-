#!/bin/sh

bash waitup.sh

token=$(curl -s --location --request POST 'http://localhost:3000/api/v1/auth/login/basic/default' \
--header 'Content-Type: application/json' \
--data-raw '{
	"email": "'$CI_EMAIL'",
	"password": "'$CI_PASSWORD'"
}' | jq -r '.payload.token')

./bp push --url http://localhost:3000 --token "$token" --sourceDir data --force