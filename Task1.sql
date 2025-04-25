/*
Create a table named employees with columns:
emp_id, name, department, and salary.

Insert 4 employee records into the table.
Show all employees from the Commerce department.
Show the name and salary of employees who earn more than 25,000.
Update the salary of the employee with emp_id = 13 to 48,000. 
*/

create database  employee_db
use employee_db;

/*Create a table named employees with columns:
emp_id, name, department, and salary.  */

create table employees(
  emp_id int PRIMARY KEY,
  name varchar(30),
  department varchar(30),
  salary int
)

-- Insert 4 employee records into the table.

insert into employees (emp_id,name,department,salary) values
(11,"Dhanya","Accounts",25000),
(12,"Sara","HR",45000),
(13,"Priya","Commerce",34000),
(14,"Krish","Sales",20000);

-- Show all employees
select * from employees;

-- Show employees from Commerce Department
select * from employees where department = "Commerce"

-- Show the name and salary of employees who earn more than 25,000.
select  name, salary from employees where salary > 25000

select * from employees;

-- Update the salary of the employee with emp_id = 13 to 48,000. 
update employees set salary = 48000 where emp_id=13