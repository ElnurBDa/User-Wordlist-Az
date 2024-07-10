#!/bin/bash

names_file="names.lst"
surnames_file="surnames.lst"
output_file="name.surname.lst"

> "$output_file"

mapfile -t names < "$names_file"
mapfile -t surnames < "$surnames_file"

for name in "${names[@]}"; do
  lower_name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
  
  for surname in "${surnames[@]}"; do
    lower_surname=$(echo "$surname" | tr '[:upper:]' '[:lower:]')
    
    echo "${lower_name}.${lower_surname}" >> "$output_file"
  done
done

echo "Output written to $output_file"

