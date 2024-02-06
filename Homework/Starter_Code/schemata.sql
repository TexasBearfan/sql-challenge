DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_management;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;


Create table titles(
	title_id VARCHAR(20) NOT null Primary Key,
	title VARCHAR(20) NOT  null);
Create table employees(
	emp_no INT Primary Key,
	emp_title_id VARCHAR(20) NOT null,
	Foreign key(emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR(20) NOT null,
	first_name VARCHAR(20) NOT null,
	last_name VARCHAR(20) NOT null,
	sex VARCHAR(20) NOT null,
	hire_date VARCHAR(20) NOT null);
CREATE TABLE departments(
	dept_no VARCHAR(20) NOT null Primary Key,
	dept_name VARCHAR(20) NOT null);
CREATE TABLE dept_emp(
	emp_no INT,
	Foreign Key (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(20) NOT null,
	Foreign Key (emp_no) REFERENCES employees(emp_no));
Create table dept_management(
	dept_no VARCHAR(20) NOT null,
	Foreign Key (dept_no) REFERENCES departments(dept_no),
	emp_no Int,
	Foreign Key (emp_no) REFERENCES employees(emp_no));

Create table salaries(
	emp_no Int,
	Foreign Key (emp_no) REFERENCES employees(emp_no),
	salary Int);
