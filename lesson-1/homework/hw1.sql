1)
  --Data is raw facts or information.
--Example: Names, numbers, dates — like “Ali”, “25”, “2023-09-15”
--A database is a collection of organized data that can be easily accessed, managed, and updated.
--Example: A library database contains books’ titles, authors, and categories.
--A relational database stores data in tables and uses relationships to connect data.
--It follows the Relational Model, where data is stored in rows and columns.
--Example: SQL Server, MySQL, Oracle are relational databases.
--A table is a structure in a database that stores data in rows and columns.
--Each row is a record, and each column is a field (attribute).
--2) Five Key Features of SQL Server
--Data Storage & Management
--Stores large amounts of structured data securely.
--Security
--Supports user logins, roles, and data encryption.
--Backup and Restore
--You can easily back up databases and restore them in case of failure.
--Stored Procedures & Triggers
--Lets you write and store business logic directly in the database.
--High Performance & Scalability
--Can handle many users and large databases efficiently.
--3) Authentication Modes in SQL Server
--SQL Server supports two main authentication modes:
--1. Windows Authentication
--Uses your Windows account (like when you log into your computer).
--More secure, uses Active Directory.
--2. SQL Server Authentication
--Uses a username and password set in SQL Server (like sa user).
--Useful when not using Windows accounts.
------------------------------------------------
2
2.1 CREATE DATABASE SchoolDB;
USE SchoolDB;
create table students (
studentID int PRIMARY KEY, 
name varchar (50),
age int,
);
insert into students values
(1, 'Dilnoza Gafurova', 19),
(2, 'Zumrad Yusupboyeva', 22),
(3, 'Nasiba Habibullayeva', 24);
select * from students

2.2 SQL Server	---  A database management system made by Microsoft to store and manage data
SSMS  ---	Short for SQL Server Management Studio — a tool (GUI) to work with SQL Server easily
SQL	---  Stands for Structured Query Language — a language used to write queries like SELECT, INSERT, CREATE, etc.

--------------------------------------------------------------

3.1 
  -- DDL - Data Definition Language - Commands that define or change the structure/schema of database objects (tables, databases, indexes, etc.) - CREATE TABLE Students ( ... ) — to make a new table
-- ALTER TABLE Students ADD ColumnName VARCHAR(50) — to change a table’s structure
-- DROP TABLE Students — to delete a table permanently
-- TRUNCATE TABLE Students — remove all data from a table, but leave the table structure
 --  DQL - Data Query Language - Commands used to retrieve / query data (reading data) - SELECT * FROM Students; — get all students
-- SELECT Name, Age FROM Students WHERE Age > 20; — get names and ages of students older than 20
  -- DML - Data Manipulation Language - Commands that manipulate / modify the data inside tables (insert, update, delete) - INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20);
--UPDATE Students SET Age = 21 WHERE StudentID = 1;
-- DELETE FROM Students WHERE Age < 18;
  -- DCL - Data Control Language - Commands that control permissions / access to the database and its objects - GRANT SELECT, INSERT ON Students TO SomeUser; — give a user permission
-- REVOKE INSERT ON Students FROM SomeUser; — take permission away
  -- TCL - Transaction Control Language - Commands to manage transactions — ensure that groups of changes happen all together or not at all - BEGIN TRANSACTION; — start a transaction
-- COMMIT; — save all the changes made in the transaction
-- ROLLBACK; — undo all changes if something goes wrong
-- SAVEPOINT sp1; — mark a point in transaction you can roll back to
--3.2 
insert into students values
(1, 'Dilnoza Gafurova', 19),
(2, 'Zumrad Yusupboyeva', 22),
(3, 'Nasiba Habibullayeva', 24);
select * from students
--3.3


