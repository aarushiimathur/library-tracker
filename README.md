

# 📚 Local Library Book Tracker

A simple command-line application to manage a local library system using Bash shell scripts. This project allows users to efficiently handle book records directly from the terminal.

---

## 🚀 Features

* Add new books
* View all available books
* Search for specific books
* Remove books from the system
* Borrow and return books
* Prevent duplicate entries
* Validate publication year
* Menu-driven interface for easy navigation

---

## 🖥️ Frontend (CLI Interface)

Although this is not a graphical frontend, the project includes a **menu-driven command-line interface** that acts as the user interface.

### Main Menu Options

* Add Book
* View Books
* Search Book
* Remove Book
* Borrow Book
* Return Book
* Exit

Users interact with the system by entering numeric choices, making it simple and intuitive even without a GUI.

---

## 🛠️ Technologies Used

* **Bash Shell Scripting** – Core logic and functionality
* **Linux CLI** – Execution environment
* **Text Files** – Used for storing book records
* **Git & GitHub** – Version control and collaboration

---

## ▶️ How to Run

1. Clone the repository:

   ```bash
   git clone <your-repo-link>
   cd <your-project-folder>
   ```

2. Give execution permission to all scripts:

   ```bash
   chmod +x *.sh
   ```

3. Run the main script:

   ```bash
   bash run_all.sh
   ```

---

## 📖 Usage Instructions

1. Launch the program using `run_all.sh`
2. Choose an option from the menu by entering the corresponding number
3. Follow on-screen prompts:

   * Enter book details (title, author, year, etc.)
   * Search using keywords
   * Borrow/return by selecting the book
4. Data is automatically saved in the system files
5. Exit the program when done

---

## 📂 Project Structure

```
.
├── add_book.sh
├── view_books.sh
├── search_book.sh
├── remove_book.sh
├── borrow_book.sh
├── run_all.sh
├── books.txt
└── README.md
```

---

## 👥 Contributors

| Name      | Contribution                                       |
| --------- | -------------------------------------------------- |
| Student 1 | add_book.sh, view_books.sh, search_book.sh         |
| Student 2 | remove_book.sh, borrow_book.sh, run_all.sh, README |

---

## 💡 Future Improvements

* Add a graphical user interface (GUI)
* Store data using a database (e.g., SQLite)
* Add user authentication
* Improve search with filters

---

## 💾 Save the File

Press:

```text id="n3k92q"
Ctrl + S
```
