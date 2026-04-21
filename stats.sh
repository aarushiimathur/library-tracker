#!/bin/bash

echo "--- Library Statistics ---"

if [[ ! -f library.txt || ! -s library.txt ]]; then
    echo "No books in library."
    exit 0
fi

total=$(wc -l < library.txt)
borrowed=$(grep -ic "|borrowed$" library.txt)
available=$(grep -ic "|available$" library.txt)

echo "Total Books     : $total"
echo "Available Books : $available"
echo "Borrowed Books  : $borrowed"