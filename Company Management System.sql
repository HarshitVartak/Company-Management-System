drop database company;
create database company;
use company;


create table Employee (id int primary key, ename varchar(10), elocation varchar(50), edepartment varchar(30));
insert into Employee (id, ename, elocation, edepartment) values 
(1, 'AB', 'Mumbai', 'Infomation Technology'),
(2, 'CD', 'Pune', 'Computer Science'),
(3, 'EF', 'Nashik', 'Data Science'),
(4, 'GH', 'Kolkata', 'Artificial Intelligence'),
(5, 'IJ', 'Goa', 'Machine Learning'),
(6, 'KL', 'Delhi', 'Big Data'),
(7, 'MN', 'Kerala', 'Full Stack'),
(8, 'OP', 'Bangaluru', 'Software Development'),
(9, 'QR', 'Punjab', 'Cloud Computing'),
(10, 'ST', 'Gujarat', 'Web Services');
select * from Employee;


create table Admin (id int primary key, aDepartment varchar(20), aEMP_Salary int);
insert into Admin (id, aDepartment, aEMP_Salary) values
(1, 'IT', 100000),
(2, 'Sales', -80000),
(3, 'Marketing', 60000),
(4, 'HR', 70000),
(5, 'Accounts', 30000),
(6, 'Finance', 40000),
(7, 'Purchasing', 90000),
(8, 'Executive', -50000),
(9, 'Tax', 40000),
(10, 'Research', 90000),
(11, 'Customer Service', 60000),
(12, 'Development', -80000),
(13, 'IT', 100000),
(14, 'Finance', 40000),
(15, 'Sales', 70000);
select * from Admin;


# using alter change column name
alter table Admin rename column aEMP_Salary to aSalary;

# adding column in table using alter
alter table Employee add ejoining int;

# getting record using where clause
select * from Admin where id = 10;

# getting salary data within the range using where clause
select * from Admin where aSalary >= 0 and aSalary <=50000;

# getting data from department starting with letter 'a' using like clause
select * from Employee where edepartment like 'a%';

# getting data from department whose  second last letter is 'e' using like clause
select * from Employee where edepartment like '%e_';

# getting salary details in assending order using order by
select * from Admin order by aSalary;

# getting salary details in decsending order using order by
select * from Admin order by aSalary desc;

# getting sum of salary
select sum aSalary from Admin;

# getting current date
select curdate();

# getting month from date
select month('2024-01-26');

# getting current date and time
select sysdate();

# performing Inner join of both tables using id column 
select * from Employee as E inner join Admin as A on E.id = A.id;

# getting highest salary 
select max(aSalary) from Admin;

# getting average of total salary
select sum(aSalary) from Admin;

# updating name using update method
update Employee set ename = 'XY' where ename = 'ST';

# making all the letters capital using upper string function
select upper(elocation) from Employee;

# getting total count of letters in edepartment using length function
select length(edepartment) from Employee;

# getting power of salary
select power(aSalary,2) from Admin;

# getting roundoff values
select round(5.66);

# to delete entire record from table
truncate table Employee;

# to delete enire table
drop table Employee;

# to delete database
drop database cpompany;