Create database Worker_db;

use Worker_db;

select * from worker;

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 

select * from worker
order by FIRST_NAME ASC, DEPARTMENT desc;

-- 2.Write an SQL query to print details for Workers with the first names from the Worker table.

select FIRST_NAME FROM worker;

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

select * from worker 
where right(FIRST_NAME, 1) = 'h' and length(FIRST_NAME) = 6;

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1.

select * from worker
where SALARY between 1 and 1;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

select FIRST_NAME, LAST_NAME, count(*) from worker
group by FIRST_NAME, LAST_NAME
having count(*) > 1;

-- Write an SQL query to show the top 6 records of a table. 

select * from worker limit 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them. 

SELECT DEPARTMENT,count(DEPARTMENT) from worker
group by (DEPARTMENT)
having count(*) > 5;

-- 8. Write an SQL query to show all departments along with the number of people in there

select DEPARTMENT, COUNT(*) AS "Number of employees" from worker
group by DEPARTMENT;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department.

select DEPARTMENT, FIRST_NAME, SALARY from worker
where (DEPARTMENT, SALARY) in (select DEPARTMENT, max(SALARY) from worker
                               group by DEPARTMENT);
                               
                               





 









