--Question number 1: List the following details of each employee: employee number, last name, first name, gender, and salary

SELECT employees.emp_no, 
employees.first_name, 
employees.last_name, 
employees.gender, 
salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

--Question number 2: List employees who were hired in 1986.

SELECT *
FROM employees
WHERE hire_date LIKE '1986%';

--Question 3: List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and 
--start and end employment dates.

SELECT
dep_manager.emp_no,
dep_manager.from_date, 
dep_manager.to_date,
departments.dept_no,
departments.dept_name,
employees.first_name, 
employees.last_name 
FROM dep_manager
JOIN departments 
	ON dep_manager.dept_no=departments.dept_no
JOIN employees 
	ON dep_manager.emp_no=employees.emp_no;

--Question 4: List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT employees.emp_no,
employees.last_name, 
employees.first_name, 
departments.dept_name
FROM dept_emp
JOIN departments 
	ON dept_emp.dept_no=departments.dept_no
JOIN employees 
	ON dept_emp.emp_no=employees.emp_no;
	
--Question 5: List all employees whose first name is "Hercules" and last names begin with "B."

SELECT employees.first_name,
employees.last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 6: List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

SELECT employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
	FROM dept_emp
	JOIN departments 
		ON dept_emp.dept_no=departments.dept_no
	JOIN employees 
		ON dept_emp.emp_no=employees.emp_no
	WHERE dept_emp.dept_no = 'd007';
	
--Question 7: List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
	FROM dept_emp
	JOIN departments 
		ON dept_emp.dept_no=departments.dept_no
	JOIN employees 
		ON dept_emp.emp_no=employees.emp_no
	WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005'
	
	
--Question 8: In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

SELECT last_name, COUNT(emp_no) AS "Total Name"
FROM employees
GROUP BY last_name
ORDER BY "Total Name" DESC;