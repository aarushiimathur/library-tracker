#!/bin/bash

echo "--- Add a Book ---"

read -p "Enter book title: " title
read -p "Enter author name: " author
read -p "Enter year published: " year

if [[ -z "$title" || -z "$author" || -z "$year" ]]; then
    echo "Error: Title, author and year are required."
    exit 1
fi

if ! [[ "$year" =~ ^[0-9]{4}$ ]]; then
    echo "Error: Enter a valid 4-digit year."
    exit 1
fi

if grep -qi "^$title|" library.txt 2>/dev/null; then
    echo "Error: Book already exists."
    exit 1
fi

echo "$title|$author|$year|available" >> library.txt
echo "Book '$title' added successfully!"