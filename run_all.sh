#!/bin/bash

while true; do
    echo "================================"
    echo "   LOCAL LIBRARY BOOK TRACKER   "
    echo "================================"
    echo "1. Add a Book"
    echo "2. View All Books"
    echo "3. Search a Book"
    echo "4. Remove a Book"
    echo "5. Borrow / Return a Book"
    echo "6. Exit"
    echo "================================"
    read -p "Choose an option: " choice

    case $choice in
        1) bash add_book.sh ;;
        2) bash view_books.sh ;;
        3) bash search_book.sh ;;
        4) bash remove_book.sh ;;
        5) bash borrow_book.sh ;;
        6) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid option. Try again." ;;
    esac

    echo ""
done
