--1
select 
CONCAT(EMPLOYEE_ID, ' ', FIRST_NAME, ' ',  LAST_NAME) AS IDwithFullname
from Employees
--2
SELECT 
REPLACE(PHONE_NUMBER, '124', '999') AS Updatedphone_number from Employees
--3
select FIRST_NAME,
len(FIRST_NAME) as lengthname
FROM Employees
where LEFT(FIRST_NAME, 1) in ('A', 'J' , 'M')
order by FIRST_NAME;
--4
select MANAGER_ID,
sum(salary) AS TOTALSALARY
from Employees
group by MANAGER_ID
--5
SELECT YEAR1, 
GREATEST(Max1,Max2,Max3) as max0 from TestMax
--6
select id, movie, description
from cinema
where id % 2 = 1 and description <> 'boring'
--7
select * from SingleOrder
order by id desc
--8
select  
coalesce(ssn, passportid, itin) as nonnull from person
--9
SELECT
  LEFT(FullName, CHARINDEX(' ', FullName + ' ') - 1) AS FirstName,
  LTRIM(RTRIM(PARSENAME(REPLACE(FullName, ' ', '.'), 2))) AS MiddleName,
  RIGHT(FullName, CHARINDEX(' ', REVERSE(FullName) + ' ') - 1) AS LastName
FROM Students;
--10
select * from Orders
where deliverystate = 'TX'
and CustomerID in (
select CustomerID
from Orders
where deliverystate = 'CA')
--11
SELECT STRING_AGG(String, ' ') WITHIN GROUP (ORDER BY SequenceNumber) AS FullQuery
FROM DMLTable;
--12
select 
concat(FIRST_NAME, ' ' , LAST_NAME) as fullname
from employees
where concat(FIRST_NAME, ' ' , LAST_NAME) like '%a%a%a%'
--13


--14
SELECT 
    StudentID,
	Fullname,
    Grade,
    SUM(Grade) OVER (ORDER BY StudentID) AS CumulativeSum
FROM Students;
--15
SELECT 
	Birthday,
    COUNT(*) AS StudentCount
FROM Student
GROUP BY Birthday
HAVING COUNT(*) > 1;
--16
SELECT 
    CASE 
        WHEN PlayerA < PlayerB THEN PlayerA  ELSE PlayerB 
    END AS Player1,
    CASE 
        WHEN PlayerA < PlayerB THEN PlayerB  ELSE PlayerA 
    END AS Player2,
    SUM(Score) AS TotalScore FROM PlayerScores
GROUP BY 
    CASE 
        WHEN PlayerA < PlayerB THEN PlayerA 
        ELSE PlayerB 
    END,
    CASE 
        WHEN PlayerA < PlayerB THEN PlayerB 
        ELSE PlayerA 
    END;
