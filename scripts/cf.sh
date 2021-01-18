#!/bin/bash

tStr=$(cf t)
CURRENT_CF_ORG=$(echo "$tStr" | awk -F ":" 'NR==4 {print $2}' |   sed -e 's/^[[:space:]]*//')
CURRENT_CF_SPACE=$(echo "$tStr" | awk -F ":" 'NR==5 {print $2}' |   sed -e 's/^[[:space:]]*//')
echo "$CURRENT_CF_ORG:$CURRENT_CF_SPACE"
