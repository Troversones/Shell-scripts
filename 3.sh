#!/bin/bash
#if the directory does not exist it prints out Hiba and exit with an error code 11
if [[ ! -d "konyvtar" ]]; then
  echo "Hiba"
  exit 11
fi
#checks if the files size is 0 bytes and prints them out without the file extensions
for file in konyvtar/*
do
  if [[ -f "$file" && ! -s "$file" ]]; then
    filename=$(basename "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo "$filename"
  fi
done
