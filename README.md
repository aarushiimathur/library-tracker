# Local Library Book Tracker

A simple command-line tool to manage a personal book library using Shell Scripts.

## Features
- Add books (title, author, year)
- View all books in a formatted table
- Search books by title or author
- Remove books
- Borrow and return books

## Technologies Used
- Bash / Shell Scripting
- Linux CLI (grep, sed, awk)
- GitHub for version control

## How to Run

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/library-tracker.git
cd library-tracker
```

2. Give execute permissions:
```bash
chmod +x *.sh
```

3. Run the main menu:
```bash
bash run_all.sh
```

## File Structure
```
library-tracker/
├── run_all.sh        # Main menu
├── add_book.sh       # Add a new book
├── view_books.sh     # View all books
├── search_book.sh    # Search by title/author
├── remove_book.sh    # Remove a book
├── borrow_book.sh    # Borrow or return a book
├── library.txt       # Data file (auto-created)
└── README.md
```

## Contributors
| Name | Contribution |
|------|-------------|
| Student 1 | add_book.sh, view_books.sh, search_book.sh |
| Student 2 | remove_book.sh, borrow_book.sh, run_all.sh, README |
