#!/bin/bash

TARGET_DIR="/home/example"

# Check if the directory exists
if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Error: Directory $TARGET_DIR does not exist."
  exit 1
fi

# Navigate to the target directory
cd "$TARGET_DIR" || exit 1

# Retain the most recent 20 files, delete others
# `ls -t` lists files by modification time (newest first)
# `tail -n +21` skips the first 20 files
# `xargs rm` deletes the remaining files
ls -t | tail -n +11 | xargs -d '\n' rm -f

echo "Retained the 10 most recent files in $TARGET_DIR and deleted the rest."