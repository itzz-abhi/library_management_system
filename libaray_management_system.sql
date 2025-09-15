CREATE DATABASE library_management_system;
USE library_management_system;

CREATE TABLE Books(
book_isbn VARCHAR(50) PRIMARY KEY,
book_title VARCHAR(100),
 category VARCHAR(50),
 rental_price DECIMAL(10,2),
 book_status VARCHAR(10),
 author VARCHAR(50),
 publisher VARCHAR(50)
);

CREATE TABLE Branch(
branch_id VARCHAR(50) PRIMARY KEY,
manager_id VARCHAR(50),
branch_address VARCHAR(100),
contact_no VARCHAR(50)
);

CREATE TABLE Employees(
emp_id VARCHAR(50) PRIMARY KEY,
emp_name VARCHAR(50),
emp_position VARCHAR(50),
salary DECIMAL(10,2),
branch_id VARCHAR(50),
FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

CREATE TABLE Members(
member_id VARCHAR(50) PRIMARY KEY,
member_name VARCHAR(50),
member_address VARCHAR(50),
reg_date DATE
);

CREATE TABLE issued_book(
issued_id VARCHAR(50) PRIMARY KEY,
issued_member_id VARCHAR(50),
FOREIGN KEY(issued_member_id) REFERENCES Members(member_id)
ON UPDATE CASCADE
ON DELETE CASCADE,
issued_book_name VARCHAR(100),
issued_date DATE,
issued_book_isbn VARCHAR(50),
FOREIGN KEY (issued_book_isbn) REFERENCES Books(book_isbn)
ON UPDATE CASCADE
ON DELETE CASCADE,
issued_emp_id VARCHAR(50),
FOREIGN KEY (issued_emp_id) REFERENCES Employees(emp_id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

CREATE TABLE return_status(
return_id VARCHAR(50) PRIMARY KEY,
issued_id VARCHAR(50),
return_book_name VARCHAR(50),
return_date DATE,
return_book_isbn VARCHAR(50),
FOREIGN KEY (return_book_isbn) REFERENCES Books(book_isbn)
ON UPDATE CASCADE
ON DELETE CASCADE
);


INSERT INTO Books
(book_isbn,book_title,category, rental_price,book_status,author,publisher)
VALUES
('978-0-553-29698-2','The Catcher in the Rye','Classic',7.00,'yes','J.D. Salinger','Little, Brown and Company'),
('978-0-330-25864-8','Animal Farm','Classic',5.50,'yes','George Orwell','Penguin Books'),
('978-0-14-118776-1','One Hundred Years of Solitude','Literary Fiction',6.50,'yes','Gabriel Garcia Marquez','Penguin Books'),
('978-0-525-47535-5','The Great Gatsby','Classic',8.00,'yes','F. Scott Fitzgerald','Scribner'),
('978-0-141-44171-6','Jane Eyre','Classic',4.00,'yes','Charlotte Bronte','Penguin Classics'),
('978-0-307-37840-1','The Alchemist','Fiction',2.50,'yes','Paulo Coelho','HarperOne'),
('978-0-679-76489-8','Harry Potter and the Sorcerers Stone','Fantasy',7.00,'yes','J.K. Rowling','Scholastic'),
('978-0-7432-4722-4','The Da Vinci Code','Mystery',8.00,'yes','Dan Brown','Doubleday'),
('978-0-09-957807-9','A Game of Thrones','Fantasy',7.50,'yes','George R.R. Martin','Bantam'),
('978-0-393-05081-8','A Peoples History of the United States','History',9.00,'yes','Howard Zinn','Harper Perennial'),
('978-0-19-280551-1','The Guns of August','History',7.00,'yes','Barbara W. Tuchman','Oxford University Press'),
('978-0-307-58837-1','Sapiens: A Brief History of Humankind','History',8.00,'no','Yuval Noah Harari','Harper Perennial'),
('978-0-375-41398-8','The Diary of a Young Girl','History',6.50,'no','Anne Frank','Bantam'),
('978-0-14-044930-3','The Histories','History',5.50,'yes','Herodotus','Penguin Classics'),
('978-0-393-91257-8','Guns, Germs, and Steel: The Fates of Human Societies','History',7.00,'yes','Jared Diamond','W. W. Norton & Company'),
('978-0-7432-7357-1','1491: New Revelations of the Americas Before Columbus','History',6.50,'no','Charles C. Mann','Vintage Books'),
('978-0-679-64115-3','1984','Dystopian',6.50,'yes','George Orwell','Penguin Books'),
('978-0-14-143951-8','Pride and Prejudice','Classic',5.00,'yes','Jane Austen','Penguin Classics'),
('978-0-452-28240-7','Brave New World','Dystopian',6.50,'yes','Aldous Huxley','Harper Perennial'),
('978-0-670-81302-4','The Road','Dystopian',7.00,'yes','Cormac McCarthy','Knopf'),
('978-0-385-33312-0','The Shining','Horror',6.00,'yes','Stephen King','Doubleday'),
('978-0-451-52993-5','Fahrenheit 451','Dystopian',5.50,'yes','Ray Bradbury','Ballantine Books'),
('978-0-345-39180-3','Dune','Science Fiction',8.50,'yes','Frank Herbert','Ace'),
('978-0-375-50167-0','The Road','Dystopian',7.00,'yes','Cormac McCarthy','Vintage'),
('978-0-06-025492-6','Where the Wild Things Are','Children',3.50,'yes','Maurice Sendak','HarperCollins'),
('978-0-06-112241-5','The Kite Runner','Fiction',5.50,'yes','Khaled Hosseini','Riverhead Books'),
('978-0-06-440055-8','Charlotte''s Web','Children',4.00,'yes','E.B. White','Harper & Row'),
('978-0-679-77644-3','Beloved','Fiction',6.50,'yes','Toni Morrison','Knopf'),
('978-0-14-027526-3','A Tale of Two Cities','Classic',4.50,'yes','Charles Dickens','Penguin Books'),
('978-0-7434-7679-3','The Stand','Horror',7.00,'yes','Stephen King','Doubleday'),
('978-0-451-52994-2','Moby Dick','Classic',6.50,'yes','Herman Melville','Penguin Books'),
('978-0-06-112008-4','To Kill a Mockingbird','Classic',5.00,'yes','Harper Lee','J.B. Lippincott & Co.'),
('978-0-553-57340-1','1984','Dystopian',6.50,'yes','George Orwell','Penguin Books'),
('978-0-7432-4722-5','Angels & Demons','Mystery',7.50,'yes','Dan Brown','Doubleday'),
('978-0-7432-7356-4','The Hobbit','Fantasy',7.00,'yes','J.R.R. Tolkien','Houghton Mifflin Harcourt');

SELECT *
FROM Books;

INSERT INTO Branch
(branch_id, manager_id, branch_address, contact_no) 
VALUES
('B001', 'E109', '123 Main St', '+919099988676'),
('B002', 'E109', '456 Elm St', '+919099988677'),
('B003', 'E109', '789 Oak St', '+919099988678'),
('B004', 'E110', '567 Pine St', '+919099988679'),
('B005', 'E110', '890 Maple St', '+919099988680');

SELECT *
FROM Branch;

INSERT INTO employees 
(emp_id, emp_name, emp_position, salary, branch_id) 
VALUES
('E101', 'John Doe', 'Clerk', 60000.00, 'B001'),
('E102', 'Jane Smith', 'Clerk', 45000.00, 'B002'),
('E103', 'Mike Johnson', 'Librarian', 55000.00, 'B001'),
('E104', 'Emily Davis', 'Assistant', 40000.00, 'B001'),
('E105', 'Sarah Brown', 'Assistant', 42000.00, 'B001'),
('E106', 'Michelle Ramirez', 'Assistant', 43000.00, 'B001'),
('E107', 'Michael Thompson', 'Clerk', 62000.00, 'B005'),
('E108', 'Jessica Taylor', 'Clerk', 46000.00, 'B004'),
('E109', 'Daniel Anderson', 'Manager', 57000.00, 'B003'),
('E110', 'Laura Martinez', 'Manager', 41000.00, 'B005'),
('E111', 'Christopher Lee', 'Assistant', 65000.00, 'B005');

SELECT *
FROM employees;

INSERT INTO Members 
(member_id, member_name, member_address, reg_date) 
VALUES
('C101', 'Alice Johnson', '123 Main St', '2021-05-15'),
('C102', 'Bob Smith', '456 Elm St', '2021-06-20'),
('C103', 'Carol Davis', '789 Oak St', '2021-07-10'),
('C104', 'Dave Wilson', '567 Pine St', '2021-08-05'),
('C105', 'Eve Brown', '890 Maple St', '2021-09-25'),
('C106', 'Frank Thomas', '234 Cedar St', '2021-10-15'),
('C107', 'Grace Taylor', '345 Walnut St', '2021-11-20'),
('C108', 'Henry Anderson', '456 Birch St', '2021-12-10'),
('C109', 'Ivy Martinez', '567 Oak St', '2022-01-05'),
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25'),
('C118', 'Sam', '133 Pine St', '2024-06-01'),
('C119', 'John', '143 Main St', '2024-05-01');

SELECT *
FROM Members;

INSERT INTO issued_book 
(issued_id, issued_member_id, issued_book_name, issued_date, issued_book_isbn, issued_emp_id) 
VALUES
('IS106','C106','Animal Farm','2024-03-10','978-0-330-25864-8','E104'),
('IS107','C107','One Hundred Years of Solitude','2024-03-11','978-0-14-118776-1','E104'),
('IS108','C108','The Great Gatsby','2024-03-12','978-0-525-47535-5','E104'),
('IS109','C109','Jane Eyre','2024-03-13','978-0-141-44171-6','E105'),
('IS110','C110','The Alchemist','2024-03-14','978-0-307-37840-1','E105'),
('IS111','C109','Harry Potter and the Sorcerers Stone','2024-03-15','978-0-679-76489-8','E105'),
('IS112','C109','A Game of Thrones','2024-03-16','978-0-09-957807-9','E106'),
('IS113','C109','A Peoples History of the United States','2024-03-17','978-0-393-05081-8','E106'),
('IS114','C109','The Guns of August','2024-03-18','978-0-19-280551-1','E106'),
('IS115','C109','The Histories','2024-03-19','978-0-14-044930-3','E107'),
('IS116','C110','Guns, Germs, and Steel: The Fates of Human Societies','2024-03-20','978-0-393-91257-8','E107'),
('IS117','C110','1984','2024-03-21','978-0-679-64115-3','E107'),
('IS118','C101','Pride and Prejudice','2024-03-22','978-0-14-143951-8','E108'),
('IS119','C110','Brave New World','2024-03-23','978-0-452-28240-7','E108'),
('IS120','C110','The Road','2024-03-24','978-0-670-81302-4','E108'),
('IS121','C102','The Shining','2024-03-25','978-0-385-33312-0','E109'),
('IS122','C102','Fahrenheit 451','2024-03-26','978-0-451-52993-5','E109'),
('IS123','C103','Dune','2024-03-27','978-0-345-39180-3','E109'),
('IS124','C104','Where the Wild Things Are','2024-03-28','978-0-06-025492-6','E110'),
('IS125','C105','The Kite Runner','2024-03-29','978-0-06-112241-5','E110'),
('IS126','C105','Charlotte''s Web','2024-03-30','978-0-06-440055-8','E110'),
('IS127','C105','Beloved','2024-03-31','978-0-679-77644-3','E110'),
('IS128','C105','A Tale of Two Cities','2024-04-01','978-0-14-027526-3','E110'),
('IS129','C105','The Stand','2024-04-02','978-0-7434-7679-3','E110'),
('IS130','C106','Moby Dick','2024-04-03','978-0-451-52994-2','E101'),
('IS131','C106','To Kill a Mockingbird','2024-04-04','978-0-06-112008-4','E101'),
('IS132','C106','The Hobbit','2024-04-05','978-0-7432-7356-4','E106'),
('IS133','C107','Angels & Demons','2024-04-06','978-0-7432-4722-5','E106'),
('IS134','C107','The Diary of a Young Girl','2024-04-07','978-0-375-41398-8','E106'),
('IS135','C107','Sapiens: A Brief History of Humankind','2024-04-08','978-0-307-58837-1','E108'),
('IS136','C107','1491: New Revelations of the Americas Before Columbus','2024-04-09','978-0-7432-7357-1','E102'),
('IS137','C107','The Catcher in the Rye','2024-04-10','978-0-553-29698-2','E103'),
('IS138','C108','The Great Gatsby','2024-04-11','978-0-525-47535-5','E104'),
('IS139','C109','Harry Potter and the Sorcerers Stone','2024-04-12','978-0-679-76489-8','E105'),
('IS140','C110','Animal Farm','2024-04-13','978-0-330-25864-8','E102');

SELECT * 
FROM issued_book;

INSERT INTO return_status 
(return_id, issued_id, return_book_name, return_date, return_book_isbn) 
VALUES
('RS101', 'IS101', NULL, '2023-06-06', NULL),
('RS102', 'IS105', NULL, '2023-06-07', NULL),
('RS103', 'IS103', NULL, '2023-08-07', NULL),
('RS104', 'IS106', NULL, '2024-05-01', NULL),
('RS105', 'IS107', NULL, '2024-05-03', NULL),
('RS106', 'IS108', NULL, '2024-05-05', NULL),
('RS107', 'IS109', NULL, '2024-05-07', NULL),
('RS108', 'IS110', NULL, '2024-05-09', NULL),
('RS109', 'IS111', NULL, '2024-05-11', NULL),
('RS110', 'IS112', NULL, '2024-05-13', NULL),
('RS111', 'IS113', NULL, '2024-05-15', NULL),
('RS112', 'IS114', NULL, '2024-05-17', NULL),
('RS113', 'IS115', NULL, '2024-05-19', NULL),
('RS114', 'IS116', NULL, '2024-05-21', NULL),
('RS115', 'IS117', NULL, '2024-05-23', NULL),
('RS116', 'IS118', NULL, '2024-05-25', NULL),
('RS117', 'IS119', NULL, '2024-05-27', NULL),
('RS118', 'IS120', NULL, '2024-05-29', NULL);

SELECT *
FROM return_status;

-- Q1:Create a New Book Record
INSERT INTO Books
(book_isbn,book_title,category,rental_price,book_status,author,publisher)
VALUES
( '978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');

SELECT *
FROM Books;

-- Q2:Update an Existing Member's Address
UPDATE Members
SET member_address ='237 Oak St'
WHERE member_id ='C103';

SELECT * 
FROM Members;

-- Q3:Delete a Record from the Issued Status Table 
DELETE FROM issued_book
WHERE issued_id='IS121';

SELECT *
FROM issued_book;

-- Q4:Retrieve All Books Issued by a Specific Employee
SELECT * 
FROM employees
WHERE emp_id ='E111'; 

-- Q5: List Members Who Have Issued More Than One Book
SELECT member_id,member_name, COUNT(issued_member_id) AS total_issued_book
FROM Members AS m
JOIN issued_book AS ib
ON m.member_id = ib.issued_member_id
GROUP BY member_id,member_name
HAVING total_issued_book > 1;

-- Q6:Used CTAS to generate new tables based on query results - each book and total book_issued_count
CREATE TABLE issued_book_count
AS 
SELECT book_isbn,book_title, COUNT(issued_book_isbn) AS count_issued_book
FROM Books AS b
JOIN issued_book AS ib
ON b.book_isbn = ib.issued_book_isbn
GROUP BY book_isbn,book_title
ORDER BY count_issued_book DESC;

SELECT *
FROM issued_book_count;

-- Q7:Retrieve All Books in a Specific Category:

DELIMITER //
CREATE PROCEDURE specific_category (IN book_category VARCHAR(50))
BEGIN
SELECT * 
FROM Books 
WHERE category = book_category;
END //

DELIMITER ;

CALL specific_category('classic');

-- Q8:Find Total Rental Income by Category:
DELIMITER //
CREATE PROCEDURE rental_income (IN book_category VARCHAR(50))
BEGIN 
SELECT category,SUM(rental_price) AS total_rental_income
FROM Books
WHERE book_category = category
GROUP BY category;
END //
DELIMITER ;

CALL rental_income('');

-- Q9:List Employees with Their Branch Manager's Name and their branch details:

SELECT e.emp_id,e.emp_name,b.branch_id,b.branch_address, b.contact_no
FROM employees AS e
JOIN Branch AS b
ON e.emp_id = b.manager_id;

-- Q10:Create a Table of Books with Rental Price Above a Certain Threshold 8USD: 
CREATE TABLE rental_books
AS 
SELECT book_isbn,book_title,category
FROM Books 
WHERE rental_price > 8;

SELECT *
FROM rental_books;

-- Q11:Retrieve the List of Books Not Yet Returned
SELECT DISTINCT issued_book_name
FROM issued_book AS ib
LEFT JOIN return_status AS rs
ON ib.issued_id = rs.issued_id
WHERE rs.return_id IS NULL;

/*
Q12:Identify Members with Overdue Books
Write a query to identify members who have overdue books (assume a -day return period). 
Display the member's_id, member's name, book title, issue date, and days overdue. 
*/

SELECT member_id,member_name,issued_book_name,issued_date,return_date,current_date() - issued_date AS Overdue
FROM issued_book AS ib
JOIN Members AS m
ON m.member_id = ib.issued_member_id
LEFT JOIN Books AS b
ON b.book_isbn = ib.issued_book_name
LEFT JOIN return_status AS r
ON r.issued_id = ib.issued_id
WHERE return_date IS NULL
AND current_date() - issued_date > 10550;


/*
Q13: Create a View table which are available for members
*/
CREATE VIEW books_for_customer
AS 
SELECT ROW_NUMBER() OVER(ORDER BY 	book_title DESC) AS Sr_no,b.book_isbn,b.book_title
FROM Books AS b
LEFT JOIN issued_book AS ib
ON B.book_isbn = ib.issued_book_isbn
WHERE ib.issued_id IS NULL;

DROP VIEW books_for_customer;

SELECT *
FROM books_for_customer;




