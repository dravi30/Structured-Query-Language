/*List the names and departments of all employees.
Show all employees who work in the Engineering department.
Find employees who earn more than 60,000.
List the names and joining dates of employees who joined before 2019.
Sort all employees by salary in descending order. */

create database emp;
use emp;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

INSERT INTO employees (emp_id, name, age, department, salary, joining_date)
VALUES
(1, 'Alice', 28, 'HR', 50000, '2021-03-15'),
(2, 'Bob', 35, 'Engineering', 75000, '2019-07-01'),
(3, 'Charlie', 30, 'Sales', 60000, '2020-01-20'),
(4, 'David', 45, 'Engineering', 82000, '2018-11-11');



--1)List the names and departments of all employees.--
select name, department from employees;


name, department
Alice	HR
Bob	Engineering
Charlie	Sales
David	Engineering



--2)Show all employees who work in the Engineering department---
select * from employees where department = "Engineering"


emp_id, name, age, department, salary, joining_date
2	Bob	35	Engineering	75000	2019-07-01
4	David	45	Engineering	82000	2018-11-11



--3)Find employees who earn more than 60,000. ---
select * from employees where salary >60000;

emp_id, name, age, department, salary, joining_date
2	Bob	35	Engineering	75000	2019-07-01
4	David	45	Engineering	82000	2018-11-11



--4)List the names and joining dates of employees who joined before 2019.--
select name,joining_date from employees where joining_date < '2019-01-01'

name, joining_date
David	2018-11-11

--5)Sort all employees by salary in descending order. --
select * from employees ORDER BY salary DESC;

emp_id, name, age, department, salary, joining_date
4	David	45	Engineering	82000	2018-11-11
3	Charlie	30	Sales	60000	2020-01-20
2	Bob	35	Engineering	75000	2019-07-01
1	Alice	28	HR	50000	2021-03-15