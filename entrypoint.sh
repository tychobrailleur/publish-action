#!/usr/bin/env bash
echo $1
awk '{print substr($0, 5, 5)}' <<< $2
curl --request PATCH \
     --header 'Authorization: Bearer $2' \
     --header 'Content-type: application/json' \
     --header 'User-Agent: Github-Action' \
     --url $1 \
     --data '{ "draft": false }'
