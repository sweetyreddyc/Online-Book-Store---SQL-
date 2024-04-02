# Book Store Database Project

This project is a simple database system for managing a book store. It consists of several tables to store information about authors, books, customers, orders, and order details.

## Table of Contents

- [Features](#features)
- [Database Schema](#database-schema)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- Store information about authors, books, customers, orders, and order details.
- Create, read, update, and delete operations on data.
- Relationships between tables to maintain data integrity.
- Timestamp for order date defaulting to the current date.

## Database Schema

The database consists of the following tables:

1. *authors*: Stores information about authors including their name.
2. *books*: Contains details of books such as title, price, ISBN, and the author they belong to.
3. *customers*: Holds data of customers including their name, mobile number, and email.
4. *orders*: Stores orders made by customers including total amount, order date, and delivery address.
5. *orderDetails*: Contains the details of each item in an order including quantity and price.

## Installation

1. Clone the repository: git clone <repository_url>
2. Navigate to the project directory: cd book_store
3. Import the SQL file into your MySQL database management system.

## Usage 

1. Access the database through your MySQL client.
2. Perform CRUD operations on the tables as needed.
3. Run SQL queries to retrieve, insert, update, and delete data.


