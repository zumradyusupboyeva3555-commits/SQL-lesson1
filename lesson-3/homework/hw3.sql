--1.1 
-- In SQL Server, BULK INSERT is a Transact-SQL (T-SQL) command used to quickly load large volumes of data from an external file (such as a text file, CSV, or other flat files) directly into a database table or view.
--BULK INSERT imports data from a data file into a table by reading the file row by row and inserting the records efficiently. It is optimized for speed and is typically much faster than using multiple INSERT statements.
--the main purpose of BULK INSERT is to:
--Improve performance when importing large datasets (millions of rows).
--Simplify data loading from files into SQL Server without writing complex scripts.
--Support different file formats (delimited, fixed-width, with headers, etc.).
--Integrate with ETL processes where data from external systems needs to be ingested into SQL Server.
--1.2
--Here are four common file formats that can be imported into SQL Server:
--CSV (Comma-Separated Values) – data stored in rows with values separated by commas (or other delimiters).
--TXT (Text Files) – plain text files, often with tab-delimited or fixed-width columns.
--XML (Extensible Markup Language) – structured hierarchical data that SQL Server can parse and import.
--JSON (JavaScript Object Notation) – lightweight data format for semi-structured data, supported in recent SQL Server versions.
--1.3
create table products (
ProductID INT PRIMARY KEY, 
ProductName VARCHAR(50), 
Price DECIMAL(10,2));

--1.4
insert into products values
(55, 'milk', 15000),
(67, 'grocery', 20000),
(91, 'bread', 4000);
select * from products

--1.5
--NULL represents the absence of a value or an unknown value in SQL.
--It is not equal to 0, an empty string, or blank.
--Any arithmetic or comparison with NULL results in NULL (unknown).
--To test for it, we use IS NULL (not =).
--A NOT NULL constraint ensures that a column must always have a value.
--You cannot insert or update a row without providing a value for this column.
--Prevents missing data in critical fields.

--1.6
alter table products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
select * from products

--1.7
--In SQL, we can add comments to explain what a query does. Comments help others (and your future self) understand the purpose of the code.
--There are two types of comments in SQL Server:
--Single-line comment → starts with --
--Multi-line (block) comment → wrapped with /* ... */

--1.8
ALTER TABLE products
ADD CategoryID int;
select * from products

--1.9
Create table Categories(
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(50) UNIQUE);
select * from Categories

--1.10
--In SQL Server, an IDENTITY column is a special type of column that automatically generates unique numeric values whenever a new row is inserted into a table.
--Purpose of the IDENTITY column
--Auto-generate primary keys – It’s commonly used for PRIMARY KEY columns so you don’t have to manually assign IDs.
--Ensure uniqueness – Each row gets a unique number automatically.
--Simplify inserts – You don’t need to specify the ID value during an INSERT; SQL Server handles it.
--Support sequential numbering – Provides an easy way to create ordered, sequential identifiers for rows.

--2.1
--

--2.2
ALTER TABLE Categories
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

--2.3
--PRIMARY KEY Ensures that each row in the table is uniquely identified. Combines the rules of UNIQUE (no duplicates) and NOT NULL (no empty values). A table can have only one PRIMARY KEY, but it can consist of one or more columns (composite key). Automatically creates a clustered index by default (unless one already exists)
--UNIQUE KEY Ensures that all values in a column (or combination of columns) are unique, but unlike PRIMARY KEY, it can allow a single NULL value (in SQL Server).
--A table can have multiple UNIQUE constraints.
--By default, creates a non-clustered index (unless specified otherwise).

--2.4
ALTER TABLE dbo.products
ADD CONSTRAINT CHK_Products_Price_Positive
CHECK (Price > 0);
select * from products

--2.5
alter table products
add Stock int not null default 0;
select * from products

--2.6
UPDATE your_table
SET price = 0
WHERE price IS NULL;

--2.7
--A foreign key constraint is used to: Enforce referential integrity between two tables. Ensure that the values in one table match values in another table. Prevent actions that would break the link between tables (e.g. inserting a row with an invalid reference).
--we can use foreign key using reference from another table that related to current one, for example the first table is : 
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100)
);
--we can use foreign key like: 
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

--3.1
create table Customers(
CustomerID INT,
CustomerName varchar(50),
CustomerAge int ,
Check (CustomerAge >= 18)
);

--3.2
create table job(
jobID INT (100,10),
JobName varchar(50),
JobProfit int 
);

--3.3
create table OrderDetails(
OrderID INT,
ProductID INT,
Quantity INT,
Price DECIMAL(10,2),
PRIMARY KEY (OrderID, ProductID)
);

--3.4
ISNULL(expression, replacement_value)
--Checks if expression is NULL.
--If it is, returns the replacement_value.
--If not, returns the original value.

SELECT ISNULL(NULL, 0) AS Result;   -- Output: 0
SELECT ISNULL(100, 0) AS Result;    -- Output: 100

COALESCE(expression1, expression2, ..., expressionN)
--Returns the first non-NULL value from the list of expressions.
--More flexible than ISNULL, because it can handle multiple values.
SELECT COALESCE(NULL, NULL, 'Hello') AS Result;  -- Output: Hello
SELECT COALESCE(NULL, 50, 100) AS Result;        -- Output: 50

ISNULL(x, y) → if x is NULL, return y.
COALESCE(x, y, z, ...) → return the first non-NULL among them.

--3.5
create table Employees(
EmpID INT PRIMARY KEY,
Email varchar(60) UNIQUE 
);
select * from Employees

--3.6

create table Productz (
ProductID int Primary key,
ProductName varchar(60),
CategoryID int,
Constraint FK_Productz_Categories
Foreign KEY (CategoryID)
References Categories (CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE
);
select * from Productz















