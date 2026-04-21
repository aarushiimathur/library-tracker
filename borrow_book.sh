#!/bin/bash

echo "--- Borrow / Return a Book ---"
read -p "Enter the exact title of the book: " title

if [[ -z "$title" ]]; then
    echo "Error: Title cannot be empty."
    exit 1
fi

if ! grep -qi "^$title|" library.txt; then
    echo "No book found with title '$title'."
    exit 1
fi

current_status=$(grep -i "^$title|" library.txt | cut -d'|' -f4)

if [[ "$current_status" == "available" ]]; then
    sed -i "s/^$title|\(.*\)|available$/$title|\1|borrowed/" library.txt
    echo "Book '$title' marked as BORROWED."
else
    sed -i "s/^$title|\(.*\)|borrowed$/$title|\1|available/" library.txt
    echo "Book '$title' marked as AVAILABLE (returned)."
fi
