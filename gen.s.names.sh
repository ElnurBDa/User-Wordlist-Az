#!/bin/bash

input_file="names.lst"
output_file="s.names.lst"

> "$output_file"

while IFS= read -r name; do
  lower_name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
  
  for letter in {a..z}; do
    echo "${letter}.${lower_name}" >> "$output_file"
  done
done < "$input_file"

echo "Output written to $output_file"

