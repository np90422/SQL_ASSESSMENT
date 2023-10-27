create database school_db;

use school_db;

-- 1 To display all the records form STUDENT table.

select * from school;

-- 2. To display any name and date of birth from the table 

 select StdName,DOB from school; 
 
 -- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 

select * from school 
where percentage >= 80;  

-- 4. To display student name, stream and percentage where percentage of student is more than 80.alter

select StdName, Stream, Percentage from school
where Percentage > 80;  

-- 5. To display all records of science students whose percentage is more than 75 form student table.

select * from school
where stream = "Science" and percentage > 75; 
