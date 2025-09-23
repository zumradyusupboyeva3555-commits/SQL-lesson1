--1
 select ProductName as Name from Products
--2
 select * from Customers as Client
--3
 select ProductName from Products
 union
 select ProductName from Products_Discounted
--4
 select * from Products
 INTERSECT
 select * from Products_Discounted
--5
 select DISTINCT Firstname, Lastname, Country from Customers
--6
 SELECT Price,
    CASE 
      WHEN Price > 1000 THEN 'High'
      WHEN Price <= 1000 THEN 'Low'
      ELSE NULL
    END AS Result
 FROM Products;
 --7
 SELECT StockQuantity,
    IIF(StockQuantity > 100, 'Yes',
    IIF(StockQuantity < 100, 'No', 'Yes')) AS ValCase
 FROM Products_Discounted;
--8
 select ProductName from Products
 UNION
 select ProductName from Products_Discounted
--9
 SELECT * FROM Products
 EXCEPT
 SELECT * FROM Products_Discounted;
--10
 SELECT Price,
    IIF( Price > 1000, 'Expensive', 'Affordable') AS divided
 FROM Products;
--11
 select * from employees
 where Age < 25 or Salary > 60000;
--12
 update Employees
 set salary = salary*1.10
 where Departmentname = 'HR' OR EmployeeID = 5
--13
 SELECT SaleAmount,
       CASE
         WHEN SaleAmount > 500 THEN 'Top Tier'
         WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
         ELSE 'Low Tier'
       END AS Tier
 FROM Sales;
--14
 SELECT CustomerID FROM Customers
 EXCEPT
 SELECT CustomerID FROM Sales;
--15
 SELECT CustomerID, Quantity,
  CASE
    WHEN Quantity = 1 THEN 0.03
    WHEN Quantity BETWEEN 2 AND 3 THEN 0.05
    ELSE 0.07
  END AS DiscountRate
 FROM Orders;
