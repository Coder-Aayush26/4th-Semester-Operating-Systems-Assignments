#!/bin/bash

# Get today's date
date=$(date +%F)

for file in *.jpg
do
    mv "$file" "$date-$file"
done

echo "All files renamed"
