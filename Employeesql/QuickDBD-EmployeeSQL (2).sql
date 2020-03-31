-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vPFaMH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "departments" (
    "dept_no" varchar(50)   NULL,
    "dept_name" varchar(50)   NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NULL,
    "dept_no" varchar(50)   NOT NULL,
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
    "emp_no" int   NOT NULL,
    "birth_date" date   NULL,
    "first_name" varchar(30)   NULL,
    "last_name" varchar(30)   NULL,
    "gender" varchar(2)   NULL,
    "hire_date" date   NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
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

