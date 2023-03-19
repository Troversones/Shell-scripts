#!/bin/bash

# get the CSV file name and parameter name from command line arguments

csv_file="$1"
param_name="$(echo "$2" | tr '[:upper:]' '[:lower:]')"

# loop through each line in the CSV file, starting from the second line (skipping the header)

tail -n +2 "$csv_file" | cut -d ";" -f 3 | sort | uniq | while read line; do

  # use awk to split the line into fields using ";" as the delimiter, and extract the value of the specified parameter

  param_value=$(echo "$line" | awk -F';' -v param="$param_name" '{print $param}')
  
   # convert the parameter value to lowercase using the tr command
  
  lowercase_param_value=$(echo "$param_value" | tr '[:upper:]' '[:lower:]')
   # display the lowercase parameter value
  echo "$lowercase_param_value"
done