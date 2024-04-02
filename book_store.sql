CREATE DATABASE book_store; -- For creating the data base

USE book_store; -- For Select the database
-- Authors Table
CREATE TABLE authors (
	authorID INT PRIMARY KEY AUTO_INCREMENT,
    authorName VARCHAR(100) NOT NULL
);

-- Books table 
CREATE TABLE books (
	bookID INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(256) NOT NULL,
    authorID INT,
    price DECIMAL(10,2) NOT NULL,
    ISBN VARCHAR(50) NOT NULL,
    FOREIGN KEY (authorID) REFERENCES authors(authorID)
);

CREATE TABLE customers (
	customerID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    mobile CHAR(10) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE orders (
	orderID INT PRIMARY KEY AUTO_INCREMENT,
    customerID INT NOT NULL,
    orderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    totalAmount DECIMAL(10,2) NOT NULL,
    address VARCHAR(256) NOT NULL,
	FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

CREATE TABLE orderDetails (
	orderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    orderID INT,
    bookID INT,
    qunatity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (orderID) REFERENCES orders(orderID),
    FOREIGN KEY (bookID) REFERENCES books(bookID)
);


-- Inserting data into the authors table
INSERT INTO authors (authorName) VALUES
('Chaithanya Reddy'),
('Pavithra Reddy'),
('Tejeswar Reddy'),
('Harshitha Reddy'),
('Rukmini Reddy');

-- Inserting data into the books table
INSERT INTO books (title, authorID, price, ISBN) VALUES
('The Shining', 1, 12.99, '978-0307743657'),
('Harry Potter and the Philosopher''s Stone', 2, 14.99, '978-0747532743'),
('A Game of Thrones', 3, 17.99, '978-0553381689'),
('To Kill a Mockingbird', 4, 9.99, '978-0061120084'),
('The Hobbit', 5, 11.99, '978-0345534835');

-- Inserting data into the customers table
INSERT INTO customers (firstName, lastName, mobile, email) VALUES
('John', 'Doe', 9381374502, 'john.doe@example.com'),
('Jane', 'Smith', 9876543210, 'jane.smith@example.com'),
('Michael', 'Johnson', 7032430796, 'michael.johnson@example.com');


-- Inserting data into the orders table
INSERT INTO orders (customerID, totalAmount, address) VALUES
(1, 37.97, '123 Main St, Anytown, USA'),
(2, 27.98, '456 Elm St, Othertown, USA'),
(3, 11.99, '789 Oak St, Anothertown, USA');

-- Inserting data into the orderDetails table
INSERT INTO orderDetails (orderID, bookID, qunatity, price) VALUES
(1, 1, 1, 12.99),
(1, 2, 1, 14.99),
(2, 3, 1, 17.99),
(3, 4, 1, 9.99),
(3, 5, 1, 11.99);

SELECT * FROM authors;

SELECT * FROM books;

SELECT * FROM customers;

SELECT * FROM orders;

SELECT * FROM orderDetails;

SELECT b.title AS BookTitle, a.authorName AS AuthorName
FROM books b
INNER JOIN authors a ON b.authorID = a.authorID;


SELECT o.orderID, c.firstName AS FirstName, c.lastName AS LastName, o.totalAmount, o.orderDate, o.address
FROM orders o
INNER JOIN customers c ON o.customerID = c.customerID;

SELECT orderID, SUM(price * quantity) AS TotalAmount
FROM orderDetails
GROUP BY orderID;

SELECT * FROM orders ORDER BY orderDate DESC LIMIT 5;

