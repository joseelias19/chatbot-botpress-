#!/bin/sh

while true; do
	status=$(curl -s --location --request GET 'http://localhost:3000/status' \
	--header 'Content-Type: application/json' | jq -r '.botpress')

	if [ "$status" == "up" ]; then
		break
	else
		sleep 1
	fi
done