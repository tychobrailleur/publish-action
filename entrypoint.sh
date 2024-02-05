#!/usr/bin/env bash
curl --request PATCH \
     --header 'Authorization: Bearer ${INPUT_TOKEN}' \
     --header 'Content-type: application/json' \
     --header 'User-Agent: Github-Action' \
     --url ${INPUT_RELEASE} \
     --data '{ "draft": false }'
