Create Database	RahuL;

use RahuL;

create table Student
(ID int Primary key,
S_Name varchar(20),
Phoneno bigint,
email_Id varchar(40));


Insert into Student (ID,S_Name,Phoneno,Email_ID) values
(01,'Ayush',9800765434,'Ayushh@gmail.com'),
(02,'Naina',800999776,'Nainatalwar@gmail.com'),
(03,'Abhijeet',9545447712,'Abbhi@gmail.com');

select * from Student;
select ID,S_name from Student;

--- ALTER COMMAND MAKE CHANGES IN TABLE

#SYNTAX TO ADD CONSTRAINT
alter table STUDENT ADD constraint unique (s_nAME);

-- Syntax Add Coloumn
Alter table Student Add column
(Employee_Designation varchar (20)  Not null);	


select * from student;

-- Rename the coloumn 
alter table Student change Employee_Designation Designation varchar (255);

-- Syntax for Drop Column
Alter table student drop column Designation;

Delete from student where id = 02;

delete from student;

truncate student;


#Where
-- Where clause is used to filter record
#Between
-- between oprator is used to specify the range
-- ex- delet from student where id between 2 and 10;

#in
-- In opretor is used to check multiplie condition
-- ex- delete from student where id in (2,8,12,34);

-- Update is DML Command , It Makes Changes in Data Structure
update Student set phoneno = 8000888887 where id = 02;

select * from Student;

update student 
set S_Name = "Prerna"
where id=3;

-- Safe Mode off

Set SQL_safe_updates=0;

-- Safe Mode on

Set SQL_safe_updates=1;

Use Rahul;
Create table Emp
(Emp_ID Int,
Emp_Name varchar(50),
Dates varchar (20),
Working_HR Int,
Emp_Salary int);

Insert into Emp 
(Emp_ID,Emp_Name,Dates,Working_HR,Emp_Salary) values
(1,'Neha','16-07-2023',6,30000),
(2,'Mayank','16-07-2023',8,50000),
(3,'Meera','16-07-2023',7,60000),
(1,'Neha','16-07-2023',6,30000),
(2,'Mayank','16-07-2023',8,50000),
(3,'Meera','16-07-2023',7,60000),
(1,'Neha','16-07-2023',6,30000),
(2,'Mayank','17-08-2023',8,50000),
(3,'Meera','17-08-2023',7,60000);

select * from Emp;

-- Group By,Having Clause,Aggragate Function
Select Dates, sum(emp_salary) as Rahul ,avg(WOrking_HR) as Prerna from Emp
group by dates;

Select EMP_Name,WOrking_HR from emp
WHere Working_HR>4;

-- Retrevive Minimum working hour of Each Employee
Select EMP_Name,Min(Working_HR) as MINI_HR from emp
group by EMp_Name;

-- Retrevive Total working hour of Each Employee
Select EMP_Name,sum(Working_HR) as Total_HR from emp
group by EMp_Name;

-- Retrevive Employee Name whose working hour > 20

Select Emp_Name,sum(Working_HR) from emp
group by Emp_Name
Having sum(Working_HR)>35;

Select Emp_Name,EMP_Salary from emp	
order by emp_Salary desc
limit 3
offset 1; 

-- (Offset- Skip the Rows)

-- List of Name 
select distinct (EMp_Name) from emp;

Select emp_Name,EMp_Salary from emp 
order by emp_salary 
limit 5;

#coding order
-- select , from, where ,group by , having , order by , limit

#Execution order
-- From,Where,Group by,Having,Select,order by,Limit

# Clause
-- Where,order by,group by,having

#Where Clause - For Filter Record 
-- Command-Update,Delete,Select

#Having- Is use to filter Group
-- Command - Select

#Sort - Order By
#Unique Name - Distinct


# Like Oprator
-- Use in Where clause to search  specified pattern in a coloumn ,allowing for partial string match using such as % (multiplie Characters ) and _(Single CHaracter)
-- 'A%' :- It Means first char is A and there can be more char atfer A
-- Ex- Aman

-- '%A' -Last Char is A  (Ex - Neha)

-- '_A%' - Second Char is A ( Ex- Mayur)

-- '%A__' Last 3rd Char is A (Ex- Ambani)

use rahul;

select * from emp
where emp_name like '%_a';

Select * from emp
where emp_salary is null;

Select * from emp
where emp_salary is not null;

# Joins - A Join is Clause that combines rows from Two or More table in Relational Database based on shared ,logical relationship(a common coloumn) between them.

-- Types of Join
-- i) Inner Join -An Inner Join combine rows from two or more table based on related column returning only the records that have matching values in Both Tables.

-- ii)Left Join - A Left join returns all records from the Left table, and the matching record from the right table ,filling with Null for right side coloumns when no match exists

-- iii) Right Join (OR RIGHT OUTER JOIN) returns all the records from the right table,plus matched records left table,filling with NULL if no match exists.

-- iv) Full Join (Full Outer Join)  - Return all the records when there is match in either the left or right table ,filling with null for missing matches.

-- v) Cross Join - is A SQL Opration that Produce a Cartesian Product by combining every row ofthe first table with every row of the second table.

-- vi) Self Join - Its regular SQL join used to compare ,match or relate rows within the same table by treating it as two separate,aliased instances.



