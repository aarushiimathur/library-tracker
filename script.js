function getBooks(){
    return JSON.parse(localStorage.getItem("books")) || [];
}

function saveBooks(books){
    localStorage.setItem("books", JSON.stringify(books));
}

function addBook(){
    let title=document.getElementById("title").value.trim();
    let author=document.getElementById("author").value.trim();
    let year=document.getElementById("year").value.trim();
    let msg=document.getElementById("msg");

    if(!title || !author || !year){
        msg.innerText="Please fill all fields.";
        return;
    }

    let books=getBooks();

    if(books.some(book=>book.title.toLowerCase()===title.toLowerCase())){
        msg.innerText="Book already exists.";
        return;
    }

    books.push({
        title,
        author,
        year,
        status:"Available"
    });

    saveBooks(books);
    msg.innerText="Book added successfully.";

    document.getElementById("title").value="";
    document.getElementById("author").value="";
    document.getElementById("year").value="";
}

function loadBooks(){
    let table=document.getElementById("bookTable");
    if(!table) return;

    let books=getBooks();
    table.innerHTML="";

    books.forEach(book=>{
        table.innerHTML += `
        <tr>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.year}</td>
            <td>${book.status}</td>
        </tr>
        `;
    });
}

function searchBooks(){
    let input=document.getElementById("searchInput").value.toLowerCase();
    let results=document.getElementById("searchResults");
    let books=getBooks();

    let filtered=books.filter(book =>
        book.title.toLowerCase().includes(input) ||
        book.author.toLowerCase().includes(input)
    );

    if(filtered.length===0){
        results.innerHTML="<p>No books found.</p>";
        return;
    }

    let html="<br><table><tr><th>Title</th><th>Author</th><th>Year</th><th>Status</th><th>Action</th></tr>";

    filtered.forEach((book,index)=>{
        html += `
        <tr>
        <td>${book.title}</td>
        <td>${book.author}</td>
        <td>${book.year}</td>
        <td>${book.status}</td>
        <td>
        <button onclick="toggleBook('${book.title}')">Borrow/Return</button>
        <button onclick="deleteBook('${book.title}')">Delete</button>
        </td>
        </tr>
        `;
    });

    html+="</table>";
    results.innerHTML=html;
}

function toggleBook(title){
    let books=getBooks();

    books=books.map(book=>{
        if(book.title===title){
            book.status = book.status==="Available" ? "Borrowed" : "Available";
        }
        return book;
    });

    saveBooks(books);
    searchBooks();
    loadStats();
    loadBooks();
}

function deleteBook(title){
    let books=getBooks().filter(book=>book.title!==title);
    saveBooks(books);
    searchBooks();
    loadStats();
    loadBooks();
}

function loadStats(){
    let total=document.getElementById("totalBooks");
    if(!total) return;

    let books=getBooks();

    let totalCount=books.length;
    let borrowed=books.filter(book=>book.status==="Borrowed").length;
    let available=totalCount-borrowed;

    document.getElementById("totalBooks").innerText=totalCount;
    document.getElementById("availableBooks").innerText=available;
    document.getElementById("borrowedBooks").innerText=borrowed;
}

loadBooks();
loadStats();