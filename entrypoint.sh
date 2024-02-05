#!/usr/bin/env bash
curl --request PATCH \
     --header 'Authorization: Bearer $2' \
     --header 'Content-type: application/json' \
     --header 'User-Agent: Github-Action' \
     --url $1 \
     --data '{ "draft": false }'
