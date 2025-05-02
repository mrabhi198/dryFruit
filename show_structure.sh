#!/bin/bash

# Get the current directory
DIR=$(pwd)

# Define output file name
OUTPUT_FILE="file_structure.txt"

# Print header
echo "Generating file structure for: $DIR"
echo "Saving to: $OUTPUT_FILE"

# Check if 'tree' is installed
if command -v tree &> /dev/null; then
    tree -a > "$OUTPUT_FILE"
else
    echo "'tree' not found, using 'find'" > "$OUTPUT_FILE"
    find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g' >> "$OUTPUT_FILE"
fi

# Optionally show a preview in the terminal
echo
echo "Preview:"
head "$OUTPUT_FILE"
echo "..."

