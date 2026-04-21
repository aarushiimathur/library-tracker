#!/bin/bash

echo "--- Add a Book ---"
read -p "Enter book title: " title
read -p "Enter author name: " author
read -p "Enter year published: " year

if [[ -z "$title" || -z "$author" || -z "$year" ]]; then
    echo "Error: All fields are required."
    exit 1
fi

echo "$title|$author|$year|available" >> library.txt
echo "Book '$title' added successfully!"
