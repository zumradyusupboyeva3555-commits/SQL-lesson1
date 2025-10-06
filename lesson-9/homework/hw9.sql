--1
SELECT p.ProductName, s.SupplierName
FROM Products p CROSS JOIN Suppliers s;
--2
select e.Name, d.DepartmentName
from Employees e cross join Departments d
--3
SELECT  s.SupplierName, p.ProductName
FROM  Suppliers s
CROSS JOIN  Products p
WHERE s.SupplierID = p.SupplierID;
--4
select o.OrderID, c.Firstname
FROM Orders o
inner join Customers c on o.CustomerID = C.CustomerID
--5
select s.Name, c.CourseName
from Students s cross join Courses c
--6
select p.ProductName, o.OrderID
FROM Products p
INNER JOIN Orders o on p.ProductID=o.ProductID
--7
select e.Name, d.DepartmentName
from Employees e
inner join Departments d
on e.DepartmentID=D.DepartmentID
--8
select s.Name, e.CourseID
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID= e.StudentID
--9
select o.OrderID, o.CustomerID, o.Orderdate, p.PaymentID, p.Amount, p.PaymentDate
from Payments p
inner join Orders o 
on o.OrderID = p.OrderID
--10
SELECT  o.OrderID, p.ProductName, p.Price
FROM  Orders o
INNER JOIN  Products p
ON o.ProductID = p.ProductID
WHERE  p.Price > 100
ORDER BY  p.Price DESC;
--11
select e.Name, d.DepartmentName
from Employees e
cross join Departments d
where e.DepartmentID <> d.DepartmentID
--12
select o.quantity, p.StockQuantity
from Orders o
inner join Products p
on o.ProductID = P.ProductID
where o.quantity > p.StockQuantity
--13
select c.Firstname, c.Lastname, s.ProductID
FROM Customers c
INNER JOIN Sales s
on c.CustomerID = s.CustomerID
where s.SaleAmount >= 500
--14
SELECT s.Name, c.CourseName
from Courses c
inner join Enrollments e on e.CourseID = c.CourseID
inner join Students s on s.StudentID = e.StudentID
--15
select p.ProductName, s.SupplierName
from Products p
inner join Suppliers s
on p.SupplierID = s.SupplierID
where SupplierName like '%Tech%'
--16
select o.TotalAmount, p.Amount
from Orders o
inner join Payments p
on o.OrderID = p.OrderID
where o.TotalAmount > p.Amount
--17
select e.Name, d.DepartmentName
from Employees e
inner join Departments d
on e.DepartmentID = D.DepartmentID
--18
select p.ProductName, c.CategoryName
from Products p
inner join Categories c
on p.Category = c.CategoryName
WHERE c.CategoryName IN ('Electronics', 'Furniture');
--19
select s.SaleID, c.FirstName, c.LastName
from Sales s
inner join Customers c
on s.CustomerID = c.CustomerID
where c.Country LIKE 'USA'
--20
select o.OrderID, c.FirstName
from Orders o
inner join Customers c
on o.CustomerID = c.CustomerID
where c.Country like 'Germany' 
and o.TotalAmount > 100
--21
select a.EmployeeID as Emp1_ID, 
       a.Name as Emp1_Name, 
       a.DepartmentID as Emp1_Department,
       b.EmployeeID as Emp2_ID, 
       b.Name as Emp2_Name, 
       b.DepartmentID as Emp2_Department
from Employees a
join Employees b 
   on a.EmployeeID < b.EmployeeID  
  and a.DepartmentID <> b.DepartmentID;
