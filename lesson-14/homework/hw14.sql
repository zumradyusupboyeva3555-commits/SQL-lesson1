--1
select 
left(Name, charindex(',', Name) -1) as Name,
LTRIM(RIGHT(Name, len(name) - charindex(',', Name))) as Surname
from [TestMultipleColumns]
--2
select *
from TestPercent
where strs like '%%/%' escape '/'
--3
select
left(vals, charindex('.', vals) -1) as firstletter,
TRIM(RIGHT(vals, len(vals) - charindex('.', vals)-1)) as secondletter,
right(vals,1) as lastletter
from Splitter
--4
SELECT *
from testDots
where len(vals) - len(replace(vals, '.', '')) > 2;
--5
select 
    texts,
    len(texts) - len(replace(texts, ' ', '')) as Spaces
from CountSpaces
--6
select 
e.Name as empname,
e.salary as empsalary,
m.name as managername,
m.salary as managersalary
from Employee e
join Employee m
on e.ManagerID = m.ID
where e.salary > m.salary
--7
select 
EMPLOYEE_ID, FIRST_NAME , LAST_NAME, HIRE_DATE, 
DATEDIFF(YEAR, HIRE_DATE, GETDATE()) as YearsofService
from Employees
where DATEDIFF(YEAR, HIRE_DATE, GETDATE()) > 10 and DATEDIFF(YEAR, HIRE_DATE, GETDATE()) < 15
--8
select 
y.RecordDate,
y.Temperature,
t.RecordDate,
t.Temperature
from weather y
join weather t
on DATEDIFF(DAY, y.RecordDate, t.RecordDate) = 1
where t.Temperature > y.Temperature
--9
select player_id,
MIN(event_date) AS first_login_date
from Activity 
group by player_id
--10
select
FIRST_NAME, LAST_NAME,
DATEDIFF(YEAR, HIRE_DATE, GETDATE()) AS YearsOfService,
 CASE 
   WHEN  DATEDIFF(year, HIRE_DATE, GETDATE()) < 1 THEN 'New Hire'
   WHEN  DATEDIFF(year, HIRE_DATE, GETDATE()) between 1 and 5 THEN 'Junior'
   WHEN  DATEDIFF(year, HIRE_DATE, GETDATE()) between 5 and 10 THEN 'Mid-Level'
   WHEN  DATEDIFF(year, HIRE_DATE, GETDATE()) between 10 and 20 THEN 'Senior'
   WHEN  DATEDIFF(year, HIRE_DATE, GETDATE()) > 20 THEN 'Veteran'
 END AS EmploymentStage
FROM Employees
--11
SELECT *
FROM GetIntegers
WHERE VALS LIKE '[0-9]%'; 
