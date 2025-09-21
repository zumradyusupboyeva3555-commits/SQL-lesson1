--1.
 select top 5* from Employees
--2.
 select distinct Category from Products;
--3.
 select * from Products
 where Price > 100;
--4.
select * from Customers
where FirstName like 'A%'; 
--5
SELECT * FROM Products ORDER BY Price asc;
--6
select * from Employees
where Salary >= 60000 and DepartmentName = 'HR'
--7
SELECT FirstName, ISNULL ( Email, 'noemail@example.com') AS Email
FROM Employees;
--8
SELECT * FROM Products
WHERE Price BETWEEN 50 AND 100;
--9
SELECT DISTINCT Category, ProductName FROM Products;
--10
SELECT DISTINCT Category, ProductName
FROM Products
ORDER BY ProductName DESC;
--11
SELECT top 10 * FROM Products ORDER BY Price DESC;
--12
SELECT EmployeeID, COALESCE(FirstName, LastName) AS Name
FROM Employees;
--13
SELECT DISTINCT Category, Price FROM Products;
--14
select * from Employees
where Age between 30 and 40 and DepartmentName = 'Marketing'
--15
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
ORDER BY Salary DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;
--16
select * from Products
where Price <= 1000 and StockQuantity > 50
ORDER BY StockQuantity ASC
--17
SELECT * FROM Products
WHERE ProductName LIKE '%e%';
--18
SELECT * FROM Employees WHERE DepartmentName IN ('HR', 'IT', 'Finance');
--19
select * from Customers ORDER BY City ASC, PostalCode DESC;
--20
select top 5* from Sales
order by SaleAmount desc;
--21
SELECT CONCAT(FirstName, LastName) AS FullName
FROM Employees;
--22
select distinct Category, ProductName, Price from Products
where Price > 50;
--23
select * from Products
where Price < 0.1 * (select AVG(Price) from Products);
--24
select * from Employees
where age < 30 and DepartmentName in ('HR', 'IT');
--25
select * from Customers 
where Email like '%@gmail.com%'
--26
SELECT * FROM employees
WHERE salary > ALL (SELECT Salary FROM Employees
WHERE DepartmentName = 'Sales');
--27
SELECT * FROM Orders
WHERE OrderDate BETWEEN DATEADD(DAY, -180, (SELECT MAX(OrderDate) FROM Orders))
   AND (SELECT MAX(OrderDate) FROM Orders);
