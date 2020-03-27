/*
drop table departments;

create table departments
(dept_no varchar(50) PRIMARY KEY,
dept_name varchar (50));


drop table dept_emp;

create table dept_emp
(emp_no int PRIMARY KEY,
dept_no varchar(50),
from_date date,
to_date date);

drop table dept_manager;
create table dept_manager
(dept_no varchar(50),
emp_no int,
from_date date,
to_date date);

drop table employees;
create table employees
(emp_no int PRIMARY KEY,
birth_date date,
first_name varchar(30),
last_name varchar (30),
gender varchar (2),
hire_date date);

drop table salaries;
create table salaries
(emp_no int PRIMARY KEY,
salary int,
from_date date,
to_date date);


drop table titles;
create table titles
(emp_no int,
title varchar (30),
from_date date,
to_date date);
*/

select employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary from employees
join salaries on employees.emp_no 
=salaries.emp_no;

select * from employees
where hire_date between '1986-01-01' and '1986-12-31';



