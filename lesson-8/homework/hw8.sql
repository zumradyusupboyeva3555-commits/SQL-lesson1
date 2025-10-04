  --1
select COUNT (ProductName) AS Totalnumberproduct, Category
FROM Products
GROUP BY Category

--2
select AVG (price) AS avgprice, Category
FROM Products
GROUP BY Category
HAVING Category = 'Electronics'

--3
SELECT CustomerID, City FROM Customers where City LIKE 'L%';

--4
SELECT * FROM Products WHERE ProductName LIKE '%er'

--5
SELECT CustomerID, Country FROM Customers WHERE Country LIKE '%A'

--6
SELECT TOP 1* FROM Products
ORDER BY Price desc

--7
SELECT *,
 CASE
   WHEN StockQuantity < 30 THEN 'LowStock'
   ELSE 'Sufficient'
   END AS StockStatus
   FROM Products;

--8
SELECT COUNT(CustomerID) as Totalnumber, Country
FROM Customers
GROUP BY Country

--9
SELECT 
MIN (Quantity) AS minquantity,
MAX (Quantity) AS maxquantity
FROM Orders

--10
SELECT DISTINCT o.CustomerID
FROM Orders o
WHERE o.OrderDate >= '2023-01-01'
  AND o.OrderDate <  '2023-02-01'
  AND NOT EXISTS (
      SELECT 1 
      FROM Invoices i
      WHERE i.CustomerID = o.CustomerID
);

--11
SELECT ProductName
FROM Products
UNION ALL
SELECT ProductName
FROM Products_Discounted

--12
SELECT ProductName
FROM Products
UNION 
SELECT ProductName
FROM Products_Discounted

--13
SELECT 
 YEAR(OrderDate) AS OrderYear,
 AVG(TotalAmount) AS AVGorderamount
 FROM Orders
 GROUP BY YEAR(OrderDate) 

--14
SELECT ProductName,
CASE
WHEN Price < 100 THEN 'Low'
WHEN Price BETWEEN 100 AND 500 THEN 'Mid'
WHEN Price > 500 THEN 'High'
END AS PriceGroup
FROM Products

--15
SELECT * 
FROM (
    SELECT district_id, district_name, population, year
    FROM City_Population
) AS SourceTable
PIVOT (
    SUM(Population) FOR year IN ([2012],[2013])
) AS Population_Each_Year;

--16
SELECT ProductID,
SUM (SaleAmount) as totalsaleamount
 FROM Sales
group by ProductID

--17
select * from Products where Productname like '%oo%'

--18
SELECT * 
FROM (
    SELECT district_id, district_name, population, year
    FROM City_Population
) AS SourceTable
PIVOT (
    SUM(population) FOR district_name IN ([Bektemir],[Chilonzor],[Yakkasaroy])
) AS Population_Each_City;

--result copy
SELECT * 
INTO  Population_Each_City
FROM (
    SELECT district_id, district_name, population, year
    FROM City_Population
) AS SourceTable
PIVOT (
    SUM(population) FOR district_name IN ([Bektemir],[Chilonzor],[Yakkasaroy])
) AS PivotedResult;


--19
 SELECT TOP 3 CustomerID, 
  SUM(TotalAmount) AS Totalspent
 FROM Invoices
  GROUP BY CustomerID 
  ORDER BY SUM(TotalAmount) DESC

--20
SELECT district_id, district_name, population, year
FROM (
    SELECT 
        district_id, 
        district_name,
        [2012], [2013]
    FROM Population_Each_Year
) AS SourceTable
UNPIVOT (
    population 
    FOR year IN ([2012], [2013])  
) AS UnpivotTable;

--21
select p.ProductID, p.ProductName, count (s.SaleID) as TimesSold 
FROM Products p
inner join Sales s on p.ProductID = s.ProductID
GROUP BY p.ProductName, p.ProductID
ORDER BY TimesSold DESC;

--22
SELECT district_id, population, region
FROM (
    SELECT 
        district_id, 
        [bektemir], [chilonzor], [yakkasaroy]
    FROM Population_Each_City
) AS SourceTable
UNPIVOT (
    population 
    FOR region IN ([bektemir], [chilonzor], [yakkasaroy])  
) AS UnpivotTable;
