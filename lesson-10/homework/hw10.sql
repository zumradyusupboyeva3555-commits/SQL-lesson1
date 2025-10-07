lesson-10
--1
select e.Name, e.Salary, d.DepartmentName
from Employees e
inner join Departments d
on e.DepartmentID = d.DepartmentID
where e.Salary > 50000
--2
select c.FirstName, c.LastName, o.OrderDate
from Customers c
inner join Orders o
on c.CustomerID = o.CustomerID
where year (OrderDate) = 2023
--3
select e.Name, d.DepartmentName
from Employees e
left join Departments d
on e.DepartmentID = D.DepartmentID
--4
SELECT p.ProductName, s.SupplierName
from Products p
right join Suppliers s
on p.SupplierID = s.SupplierID
--5
select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
from Orders o
full outer join Payments p
on o.OrderID = p.OrderID
--6
select a.Name as EmployeeName, b.Name as ManagerName
from Employees a
left join Employees b
on a.ManagerID = b.EmployeeID
--7
select s.Name, c.CourseName
from Students s
inner join Enrollments e on s.StudentID = e.StudentID
inner join Courses c on c.CourseID = e.CourseID
where c.CourseName = 'Math 101'
--8
select c.FirstName, c.LastName, SUM(o.Quantity) AS TotalQuantity
from Customers c
inner join Orders o
on c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
having SUM(o.Quantity) > 3
--9
select e.Name, d.DepartmentName
from Employees e
inner join Departments d
on e.DepartmentID = d.DepartmentID
where d.DepartmentName = 'Human Resources'
--10
select d.DepartmentName, count (e.Name) as EmployeeCount
from Employees e
inner join Departments d
on e.DepartmentID = d.DepartmentID
group by DepartmentName
having count (e.Name) > 5
--11
select p.ProductID, p.ProductName
from Products p
left join Sales s
on p.ProductID = s.ProductID
where s.ProductID IS NULL;
--12
select c.FirstName, c.LastName, SUM (o.Quantity) as TotalOrders
from Customers c
inner join Orders o
on c.CustomerID = o.CustomerID
group by FirstName, LastName
having SUM (o.Quantity) >= 1
--13
select e.Name, d.DepartmentName
from Employees e
inner join Departments d
on e.DepartmentID = d.DepartmentID
--14
select 
   a.Name as Employee1,
   b.Name as Employee2,
   m.Name as Manager
from Employees a
left join Employees b
   on a.ManagerID = b.ManagerID
 and a.EmployeeID < b.EmployeeID 
join Employees m
   on a.ManagerID = m.EmployeeID  
   WHERE b.Name  IS NOT NULL
order by m.Name;
--15
select c.FirstName, c.LastName, o.OrderID, o.OrderDate
from Customers c
inner join Orders o
on c.CustomerID = o.CustomerID
where year( OrderDate ) = 2022
--16
select e.Name, e.Salary, d.DepartmentName
from Employees e
inner join Departments d
on e.DepartmentID = d.DepartmentID
where d.DepartmentName = 'Sales'
and e.Salary > 60000
--17
select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
from Orders o
inner join Payments p
on o.OrderID = p.OrderID
--18
select p.ProductName, p.ProductID
from Products p
left join Orders o
on p.ProductID = o.ProductID
where o.Quantity is null
--20
select o.OrderID, o.OrderDate
from Orders o
left join Payments p
on o.OrderID = p.OrderID
where year (o.OrderDate) < 2020
and p.PaymentID is null
--21
select p.ProductID, p.ProductName
from Products p
left join Categories c
on p.Category = c.CategoryName
where c.CategoryName is null
