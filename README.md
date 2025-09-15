# 📚 Library Management System (SQL Project)

A robust **Library Management System** designed using **MySQL**, which demonstrates core concepts of relational database management including **data modeling**, **joins**, **stored procedures**, **views**, **subqueries**, and **data manipulation**. This project simulates the backend of a real-world library system, covering operations such as book lending, returning, employee management, branch control, and member tracking.

---

## 🚀 Features

- 📖 **Book Management**: Add, update, delete, and track books with details like ISBN, title, category, author, publisher, rental price, and availability status.
- 🧑‍💼 **Employee & Branch Management**: Maintain hierarchical relationships between employees and branches.
- 👥 **Member Registration**: Track library members, their registration details, and issued books.
- 🔁 **Book Issuance & Returns**: Issue books to members and manage return status with date tracking.
- 📊 **Reporting & Insights**:
  - Books issued per employee
  - Books issued per member
  - Books not yet returned
  - Books most frequently issued
  - Total rental income per category
- ⚙️ **Stored Procedures**: Handle reusable queries like filtering books by category or calculating rental income.
- 🪟 **Views**: Create virtual tables for available books for customers.
- 🗂️ **CTAS (Create Table As Select)**: Use CTAS to create aggregate tables like `issued_book_count`.
- 📌 **Data Constraints & Relationships**: Demonstrates `PRIMARY KEY`, `FOREIGN KEY`, `CASCADE`, and data normalization principles.

---

## 🧱 Database Schema

### Tables

| Table Name         | Description                           |
|--------------------|---------------------------------------|
| `Books`            | Stores details about all books        |
| `Branch`           | Stores details of library branches    |
| `Employees`        | Employee details and branch relation  |
| `Members`          | Registered library members            |
| `issued_book`      | Tracks issued books                   |
| `return_status`    | Tracks returned books                 |
| `issued_book_count`| (Derived) Count of issued books       |
| `rental_books`     | (Derived) Books with price > $8       |

---

## 📈 Key SQL Concepts Demonstrated

- ✅ `CREATE DATABASE`, `USE`, `CREATE TABLE`, `INSERT`, `UPDATE`, `DELETE`
- ✅ `JOIN` (e.g., `INNER JOIN`, `LEFT JOIN`)
- ✅ `GROUP BY`, `HAVING`, `COUNT`, `SUM` – for aggregation and filtering
- ✅ `STORED PROCEDURES` – reusable, parameterized SQL logic
- ✅ `VIEWS` – virtual tables for simplified querying
- ✅ `CTAS` (Create Table As Select) – derived tables from queries
- ✅ `ROW_NUMBER()` – window function for ranking and ordering
- ✅ `PRIMARY KEY`, `FOREIGN KEY`, `ON UPDATE CASCADE`, `ON DELETE CASCADE`
- ✅ `DATE` operations – overdue calculations, current date differences

---
## 📌 Sample Queries

- 🔢 **Q1**: Add a new book  
- 🏠 **Q2**: Update a member's address  
- ❌ **Q3**: Delete an issued book record  
- 👨‍💼 **Q4**: Retrieve books issued by a specific employee  
- 👥 **Q5**: Find members with more than one issued book  
- 📊 **Q6**: Create a table with issued book counts using `CTAS`  
- 📚 **Q7**: Stored procedure to get books by category  
- 💰 **Q8**: Stored procedure to calculate total rental income by category  
- 🧾 **Q9**: List employees along with their branch manager and branch details  
- 💸 **Q10**: Create a table of books with rental price above $8  
- 📦 **Q11**: Retrieve books that have not been returned yet  
- ⏰ **Q12**: Identify members with overdue books  
- 🪟 **Q13**: Create a view of books available to members
---

## 🛠️ Technologies Used

- **Database**: MySQL (Tested on MySQL 8.x)
- **Language**: SQL
- **Tools**: Any SQL Client (MySQL Workbench, DBeaver, etc.)

---

## 🧪 How to Run This Project

1. **Clone the repository**:
   ```bash
   git clone https://github.com/itzz-abhi/library-management-system-sql.git
   cd library-management-system-sql

