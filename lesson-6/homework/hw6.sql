--1
--here are two ways:
select * from 
(select col1,col2 from InputTbl
union
select col2, col1 from InputTbl) as distinction
where col1 < col2

select distinct
case when col1 <= col2 then col1 else col2 end as col1,
case when col1 <= col2 then col2 else col1 end as col2
FROM InputTbl
ORDER BY col1, col2;

--2
select * from TestMultipleZero
WHERE NOT (A=0 AND B=0 AND C=0 AND D=0);

--3
ELECT * FROM section1 
   where id %2 = 1
   
--4
select * from section1
where id < 2

select  top 1* from section1
order by id asc

--5
select  top 1* from section1
order by id desc

--6
select * from section1
where name like '%b%';

--7
select * from ProductCodes
where code like '%/_%' escape '/'
