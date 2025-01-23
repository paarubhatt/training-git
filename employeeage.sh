#!/bin/bash

data_file="employee.txt"

# Check file exists
if [[ ! -f $data_file ]]; then
  echo "File $data_file not found."
  exit 1
fi

# Display employee name with age more than 40
echo "Employee name with age more than 40:"
awk -F '\t| +' 'NR > 1 && $3 > 40 {print $1}' "$data_file"