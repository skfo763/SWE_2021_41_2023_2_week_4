#!/bin/bash

cd files || { echo "Could not navigate to 'files' directory. Exiting."; exit 1; }

for file in *; do
  first_letter=$(echo "$file" | grep -o '^.' | tr '[:upper:]' '[:lower:]')

  if [[ "$first_letter" =~ [a-z] ]]; then
    mv "$file" "../$first_letter/"
  else
    echo "No suitable directory for file $file $first_letter"
  fi
done

cd ..

