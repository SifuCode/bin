#!/bin/bash

# Get the directory of the path entered when calling the script
dir=$(dirname "$1")

# Print the current directory for that path
echo "The current directory for path $1 is: $dir"
