#!/bin/bash

echo "--- Remove a Book ---"
read -p "Enter the exact title of the book to remove: " title

if [[ -z "$title" ]]; then
    echo "Error: Title cannot be empty."
    exit 1
fi

if grep -qi "^$title|" library.txt; then
    grep -vi "^$title|" library.txt > temp.txt && mv temp.txt library.txt
    echo "Book '$title' removed successfully."
else
    echo "No book found with title '$title'."
fi
