
##Note : Create the following dummy table in MySQL Workbench using CREATE FUNCTION-
use company_db;
create table Employees(
EMPID int primary key,
EMPName varchar(50),
Department varchar(50),
City varchar(50),
Salary int,
Hire_date date);
insert into employees values
(101, 'rahul mehta', 'sales', 'delhi', 55000,'2020-04-12'),
(102, 'Priya sharma', 'Hr', 'Mumbai', 62000,'2019-09-25'),
(103, 'Aman singh', 'IT', 'Bangluru', 72000, '2021-03-10'),
(104, 'Neha Patel', 'Sales', 'Delhi', 48000, '2022-01-14'),
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22'),
(106, 'Divya nair', 'IT', 'Chennai', 81000, '2019-12-11'),
(107, 'Raj kumar', 'HR', 'Delhi', 60000, '2020-05-28'),
(108, 'Simran kaur', 'Finance', 'Mumbai', 58000, '2021-08-03'),
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000, '2023-01-15');

##Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments.

Select  EMPName, Department from Employees where Department In ("IT","HR");

Select * from employees;

##Question 2 : Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance
Select EMPname, Department from employees 
where Department in ("Sales", "IT", "Finance");

##Question 3 : Display employees whose salary is between ₹50,000 and ₹70,000.
Select EMPName, Salary from employees where salary between 50000 and 70000;

##Question 4 : List employees whose names start with the letter ‘A’.
Select EmpName from employees where EMPName like "A%";

##Question 5 : Find employees whose names contain the substring ‘an’.
Select EMPName from employees where EMPName like "%an%";

##Question 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.
Select EMPname, City, Salary from employees where City in ('Delhi', 'Mumbai') and Salary > 55000;

##Question 7 : Display all employees except those from the ‘HR’ department.
Select * from employees
where Department <>"HR";

##Question 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).
SELECT *
FROM Employees
WHERE YEAR(Hire_date) BETWEEN 2019 AND 2022
ORDER BY Hire_date ASC;


