-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vPFaMH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" varchar(50)   NULL,
    "dept_name" varchar(50)   NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NULL,
    "dept_no" varchar(50)   NULL,
    "from_date" date   NULL,
    "to_date" date   NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(50)   NULL,
    "emp_no" int   NULL,
    "from_date" date   NULL,
    "to_date" date   NULL
);

CREATE TABLE "employees" (
    "emp_no" int   NULL,
    "birth_date" date   NULL,
    "first_name" varchar(30)   NULL,
    "last_name" varchar(30)   NULL,
    "gender" varchar(2)   NULL,
    "hire_date" date   NULL
);

CREATE TABLE "salaries" (
    "emp_no" int   NULL,
    "salary" int   NULL,
    "from_date" date   NULL,
    "to_date" date   NULL
);

CREATE TABLE "titles" (
    "emp_no" int   NULL,
    "title" varchar(30)   NULL,
    "from_date" date   NULL,
    "to_date" date   NULL
);

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_emp" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_manager" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

