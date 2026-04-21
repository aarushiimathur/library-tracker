#!/bin/bash

echo "--- All Books ---"

if [[ ! -s library.txt ]]; then
    echo "No books in the library yet."
    exit 0
fi

echo "-----------------------------------------------------------"
printf "%-25s %-20s %-6s %-12s\n" "Title" "Author" "Year" "Status"
echo "-----------------------------------------------------------"

while IFS='|' read -r title author year status; do
    printf "%-25s %-20s %-6s %-12s\n" "$title" "$author" "$year" "$status"
done < library.txt

echo "-----------------------------------------------------------"
