#!/bin/bash

for file in konyvtar/*
do
  if [[ -f "$file" && ! -s "$file" ]]; then
    filename=$(basename "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo "$filename"
  fi
done