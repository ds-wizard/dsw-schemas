#!/bin/bash

set -e

FILES=$(find schemas/ -name "*.json")

for FILE in $FILES; do
  echo $FILE
  jsonschema -i $FILE ./.github/schema.json
  echo "-> VALID"
done

