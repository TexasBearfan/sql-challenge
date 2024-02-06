

SELECT employees.emp_no,first_name,last_name,sex,salary FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

SELECT first_name,last_name,hire_date FROM employees
WHERE hire_date LIKE '%1986';

SELECT dept_management.dept_no,departments.dept_name,employees.emp_no,employees.last_name,employees.first_name from employees
INNER JOIN dept_management ON
employees.emp_no=dept_management.emp_no
INNER JOIN departments ON 
dept_management.dept_no=departments.dept_no;

SELECT dept_emp.dept_no,employees.emp_no,employees.last_name,employees.first_name,departments.dept_name from employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no;

SELECT first_name,last_name,sex FROM employees
WHERE first_name='Hercules'
	AND last_name LIKE 'B%'
	
SELECT employees.emp_no,employees.first_name,employees.last_name,departments.dept_name from employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE dept_name='Sales'

SELECT employees.emp_no,employees.first_name,employees.last_name,departments.dept_name from employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE dept_name='Sales' OR dept_name='Development'

SELECT last_name,COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name)DESC