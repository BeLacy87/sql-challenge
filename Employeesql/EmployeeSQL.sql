
create table departments
(dept_no varchar(50),
dept_name varchar (50));


create table dept_emp
(emp_no int,
dept_no varchar(50),
from_date date,
to_date date);


create table dept_manager
(dept_no varchar(50),
emp_no int,
from_date date,
to_date date);


create table employees
(emp_no int,
birth_date date,
first_name varchar(30),
last_name varchar (30),
gender varchar (2),
hire_date date);

create table salaries
(emp_no int,
salary int,
from_date date,
to_date date);


create table titles
(emp_no int,
title varchar (30),
from_date date,
to_date date);


select employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary from employees
join salaries on employees.emp_no 
=salaries.emp_no;

select * from titles
limit 20;

