--1
SELECT min(price) as minprice FROM Products

--2
SELECT max(Salary) as maxSalary FROM Employees

--3
SELECT COUNT(*) AS TotalCustomers FROM Customers;

--4
SELECT COUNT(DISTINCT Category) AS UniqueCategory FROM Products;

--5
SELECT SUM(Saleamount) AS Totalsalesamount FROM Sales
WHERE ProductID =7

--6
SELECT AVG(Age) AS Avgage FROM Employees;

--7
SELECT DepartmentName,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentName
ORDER BY EmployeeCount DESC;

--8
SELECT Category, max(Price) AS maxprice, min(Price) AS minprice FROM Products
group by Category

--9
SELECT CustomerID, SUM(CustomerID * SaleAmount) AS totalsales FROM Sales
GROUP BY CustomerID

--10
SELECT DepartmentName, COUNT (*) AS Employeecount FROM Employees
GROUP BY DepartmentName
HAVING COUNT(*) > 5;

--11
SELECT SUM(SaleAmount) AS Totalsales , AVG(SaleAmount) AS Avgsales FROM Sales
GROUP BY ProductID

--12
SELECT COUNT(EmployeeID) AS Employeecount FROM Employees
WHERE DepartmentName = 'HR';

--13
select DepartmentName,
    min(salary) as lowestsalary,
    max(salary) as highestsalary from Employees
GROUP BY DepartmentName;

--14
SELECT DepartmentName,
   AVG(salary) AS Avgsalart FROM Employees
   GROUP BY DepartmentName;

--15
SELECT DepartmentName,
 AVG(salary) AS Avgsalart,
 COUNT(*) AS Employeecount FROM Employees
 GROUP BY DepartmentName;

--16
  SELECT Category,
  AVG(Price) AS AvgPrice from Products
  GROUP BY Category
  HAVING AVG(Price) > 400;

--17
SELECT YEAR(SaleDate) AS Saleyear,
  SUM( SaleAmount) AS Totalsales FROM Sales
 GROUP BY YEAR(SaleDate)
 ORDER BY SaleYear;

--18
  SELECT CustomerName,
   COUNT (OrderID) AS OrderCount 
   FROM Orders
  GROUP BY CustomerName
  HAVING  COUNT (OrderID) >=3;

--19
  SELECT DepartmentName,
  AVG (Salary) AS Avgsalary 
  FROM Employees
  GROUP BY DepartmentName
  HAVING AVG (Salary) > 60000
  
 --20
 SELECT Category,
  AVG(Price) AS AVGprice
  FROM Products
  GROUP BY Category
  HAVING AVG(Price) > 150;
  
  --21
  SELECT CustomerID,
  SUM (SaleAmount) AS TotalCustomerSale FROM Sales
  GROUP BY CustomerID
  HAVING SUM (SaleAmount) > 1500;

--22
SELECT DepartmentName, 
  SUM(Salary) AS Totalsalary,
  AVG(Salary) AS Avgsalary 
  FROM Employees
  GROUP BY DepartmentName
  HAVING AVG(Salary) > 65000;
  
 --23
 SELECT CustID,
 SUM(freight) AS Totalfreight
  FROM Sales.Orders
  GROUP BY CustID
  HAVING SUM(freight) > 50;
  
  --24
  SELECT 
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    SUM(TotalAmount) AS TotalSales,
    COUNT(DISTINCT ProductID) AS UniqueProducts
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(DISTINCT ProductID) >= 2
ORDER BY OrderYear, OrderMonth;
  
  --25
  SELECT YEAR(OrderDate) AS OrderYear,
       MIN(Quantity) AS MinQuantity,
       MAX(Quantity) AS MaxQuantity
  FROM Orders
  GROUP BY YEAR(OrderDate);
