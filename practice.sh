#!/bin/bash
declare -a nums=($(seq 1 100))

# Remove a random number from the array
unset nums[$((RANDOM%100))]

# Loop through the array to find the missing number
for i in "${nums[@]}"
do
  if [[ -z $i ]]; then
    continue
  elif [[ $i -ne $((++j)) ]]; then
    echo "Missing number: $j"
    break
  fi
done
