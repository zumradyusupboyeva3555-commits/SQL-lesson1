1
CREATE TABLE Employees (
employeeID INT primary key,
Name varchar (50),
salary decimal (10,2),
)
select * from Employees

insert into Employees values
(1, 'George', $1500),
(2, 'Catherine', $1000),
(3, 'Zoe', $1200),
(4, 'Thomas', $800),
(5, 'David', $2000);

update Employees 
set salary = 7000
where employeeID = 1

delete from Employees
where employeeID = 2

--1.5
--DELETE command deletes specific rows based on condition
--DROP command deletes the entire table or database
--TRUNCATE command deletes all rows but retains table structure
--1.6
alter table Employees 
alter column name varchar(100);

alter table Employees
add department varchar(50);

exec sp_rename 'Employees.salary', 'float', 'column';

1.9
create table departments(
departmentID INT primary key,
Departmentname VARCHAR(50));
select * from departments

1.10
truncate table Employees

2.1
insert into departments values
(1, 'fleet'),
(2, 'dispatch'),
(3, 'update'),
(4, 'accounting'),
(5, 'safety');

select * from departments

2.2
UPDATE Employees
SET Department = 'Management'
WHERE float > 5000;

select * from Employees
truncate table Employees

alter table Employees
drop column department

exec sp_rename 'Employees', 'StaffMembers'
drop table departments

3.1
create table Products(
ProductID int Primary Key,
ProductName VARCHAR(50),
Category VARCHAR(50), 
Price DECIMAL,
ProductOrigin varchar(50),
)
select * from Products

alter table Products
add constraint CHK_Price_Positive CHECK (Price > 0);

alter table Products
add StockQuantity varchar(50);

exec sp_rename 'Products.Category', 'ProductCategory', 'column';














