#!/bin/bash

lines=$(terraform output | cut -d'=' -f2)

echo "$lines" | \
while IFS= read -r line; do
  echo $line
  eval $line || true
done

exit 0



