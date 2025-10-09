--1
select o.OrderID, c.FirstName, c.LastName, o.OrderDate
from Orders o
inner join Customers c
on o.CustomerID = c.CustomerID
where year (o.OrderDate) > 2022
--2
select e.Name, d.DepartmentName
from Employees e
inner join Departments d on e.DepartmentID = d.DepartmentID
where d.DepartmentName = 'Sales' or d.DepartmentName = 'Marketing'
--3
select max (e.Salary) as MaxSalary, d.DepartmentName
from Employees e
inner join Departments d on e.DepartmentID = d.DepartmentID
group by d.DepartmentName
order by d.DepartmentName desc
--4
select c.FirstName, c.LastName, c.Country, o.OrderID, o.OrderDate
from Customers c
inner join Orders o on c.CustomerID = o.CustomerID
where c.Country = 'USA'
AND YEAR(o.OrderDate) = 2023
--5
select c.FirstName, c.LastName, sum(o.OrderID) as TotalOrders
from Orders o
inner join Customers c on c.CustomerID = o.CustomerID
group by c.FirstName, c.LastName
--6
select p.ProductName, s.SupplierName
from Products p
inner join Suppliers s on p.SupplierID = s.SupplierID
where s.SupplierName = 'Gadget Supplies' or s.SupplierName = 'Clothing Mart'
--7
select c.FirstName, c.LastName, max(o.OrderDate) as MostRecentOrderDate
from Customers c
right join Orders o
on c.CustomerID = o.CustomerID
where o.ProductID is null
group by c.FirstName, c.LastName
order by MostRecentOrderDate desc
--8
select c.FirstName, c.LastName, TotalAmount as OrderTotal
from Orders o
inner join Customers c
on o.CustomerID = c.CustomerID
where  TotalAmount > 500
--9
select p.ProductName, s.SaleDate, s.SaleAmount
from Products p
inner join Sales s
on p.ProductID = s.ProductID
where year (s.SaleDate) = 2022
or s.SaleAmount > 400
--10
select p.ProductName, sum(s.SaleAmount) as TotalSalesAmount
from Sales s
inner join Products p
on p.ProductID = s.ProductID
group by p.ProductName
--11
select e.Name, d.DepartmentName, e.Salary
from Employees e
inner join Departments d
on e.DepartmentID = d.DepartmentID
where d.DepartmentName = 'Human Resources'
and e.Salary > 60000
--12
select p.ProductName, s.SaleDate, p.StockQuantity
from Products p
inner join Sales s
on p.ProductID = s.ProductID
where year(s.SaleDate) = 2023
and p.StockQuantity > 100
--13
select e.Name, d.DepartmentName, e.HireDate
from Employees e
inner join Departments d
on e.DepartmentID = d.DepartmentID
where d.DepartmentName = 'Sales'
or year(e.HireDate) > 2020
--14
select c.FirstName, c.LastName, o.OrderID, c.Address, o.OrderDate
from Customers c
inner join Orders o
on c.CustomerID = o.CustomerID
where c.Country = 'USA'
and  c.Address like ('[0-9][0-9][0-9][0-9]%')
--15
select p.ProductName, p.Category, s.SaleAmount
from Products p
inner join Sales s
on p.ProductID = s.ProductID
where p.Category = 'Electronics'
or  s.SaleAmount > 350
--16
select c.CategoryName, count(ProductID) AS ProductCount
from Products p
inner join Categories c
on p.Category = c.CategoryName
group by c.CategoryName
--17
select c.FirstName, c.LastName, c.City, o.OrderID, totalamount as Amount
from Customers c
inner join Orders o
on c.CustomerID = o.CustomerID
where c.City = 'Los Angeles'
and totalamount > 300
--18
select e.Name, d.DepartmentName
from Employees e
inner join Departments d
on e.DepartmentID = d.DepartmentID
where d.DepartmentName = 'Human resources' or d.DepartmentName = 'Finance'
or 
--19
select e.Name, d.DepartmentName, e.Salary
from Employees e
inner join Departments d
on e.Departmentid = d.Departmentid
where d.DepartmentName = 'Sales' or d.DepartmentName = 'Marketing'
and e.Salary > 60000
