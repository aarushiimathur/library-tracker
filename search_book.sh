#!/bin/bash

echo "--- Search a Book ---"
read -p "Enter title or author to search: " keyword

if [[ -z "$keyword" ]]; then
    echo "Error: Please enter a keyword."
    exit 1
fi

results=$(grep -i "$keyword" library.txt)

if [[ -z "$results" ]]; then
    echo "No books found matching '$keyword'."
else
    echo "-----------------------------------------------------------"
    printf "%-25s %-20s %-6s %-12s\n" "Title" "Author" "Year" "Status"
    echo "-----------------------------------------------------------"
    while IFS='|' read -r title author year status; do
        printf "%-25s %-20s %-6s %-12s\n" "$title" "$author" "$year" "$status"
    done <<< "$results"
    echo "-----------------------------------------------------------"
fi
