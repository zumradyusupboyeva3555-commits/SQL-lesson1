--1
select p.firstname, p.lastname, a.city, a.state
from Person p
left join Address a on p.personId = a.personId
--2
select
   e.name as employeename,
   e.salary as employeesalary
from Employee e
join employee m on e.managerid=m.id
   where e.salary > m.salary
 --3
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;
--4
DELETE FROM Person
WHERE Id NOT IN (
    SELECT MIN(Id)
    FROM Person
    GROUP BY Email
);
--5
select g.name, g.parentname
from boys b
right join girls g
on b.ParentName = g.ParentName
where b.name is null
--6
--7
select 
 c1.Item as Cart1item, 
 c2.item as Cart2item
from Cart1 c1
full outer join Cart2 c2
on c1.Item = c2.item
--8
select c.name
from Customers c
left join Orders o
on c.id = o.id
where o.customerId is null
--9
	SELECT  s.student_id, s.student_name, sub.subject_name,
    COUNT(e.subject_name) AS attended_exams FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON s.student_id = e.student_id
    AND sub.subject_name = e.subject_name
GROUP BY 
    s.student_id, 
    s.student_name, 
    sub.subject_name
ORDER BY 
    s.student_id, 
    sub.subject_name;
