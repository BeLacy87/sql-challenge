/*
drop table departments;

create table departments
(dept_no varchar(50) PRIMARY KEY,
dept_name varchar (50));


drop table dept_emp;



drop table dept_emp;
create table dept_emp
(emp_no int ,
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


--1
select employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary from employees
join salaries on employees.emp_no 
=salaries.emp_no;

--2
select * from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3
select departments.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.first_name,
employees.last_name,
dept_manager.from_date,
dept_manager.to_date
from departments 
	inner join dept_manager
	on departments.dept_no=dept_manager.dept_no
	inner join employees
	on dept_manager.emp_no=employees.emp_no;
	
*/
--4
select dept_emp.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
from departments
	inner join dept_emp
	on departments.dept_no=dept_emp.dept_no
	inner join employees
	on dept_emp.emp_no=employees.emp_no;

--5
select * from employees
where first_name = 'Hercules' and 
last_name like 'B%';

--6
select employees.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
from employees
	inner join dept_emp
	on employees.emp_no=dept_emp.emp_no
	inner join departments
	on dept_emp.dept_no=departments.dept_no
	where dept_name = 'Sales';

--7
select employees.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
from employees
	inner join dept_emp
	on employees.emp_no=dept_emp.emp_no
	inner join departments
	on dept_emp.dept_no=departments.dept_no
	where dept_name = 'Sales' or dept_name = 'Development';

--8
select last_name, count(*) from employees
group by last_name
order by count desc;

