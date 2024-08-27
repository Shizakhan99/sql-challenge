-- List the employee number, last name, first name, sex, and salary of each employee

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employeesss e
JOIN salaries s ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, last_name, hire_date from employeesss where hire_date LIKE '%1986';


-- List the manager of each department along with their department number, department name,
-- employee number, last name, and first name.

select e.emp_no, e.first_name, e.last_name, e.emp_title, d.dept_name, d.dept_no
from employeesss as e 
inner join dept_empp as dem ON
e.emp_no=dem.emp_no
inner join title as t ON
e.emp_title= t.emp_title
INNER JOIN departments AS d ON dem.dept_no = d.dept_no
where e.emp_title= 'm0001'
GROUP BY d.dept_name,d.dept_no, e.emp_no, e.first_name, e.last_name, e.emp_title;

-- List the department number for each employee along with that employee’s employee number,
-- last name, first name, and department name.
SELECT dept_empp.emp_no, employeesss.last_name, employeesss.first_name, departments.dept_name
FROM dept_empp
JOIN employeesss
ON dept_empp.emp_no = employeesss.emp_no
JOIN departments
ON dept_empp.dept_no = departments.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and 
-- whose last name begins with the letter B.
SELECT first_name, last_name
FROM employeesss
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, 
-- and first name.

SELECT dept_empp.emp_no, employeesss.last_name, employeesss.first_name, departments.dept_name
FROM dept_empp
JOIN employeesss
ON dept_empp.emp_no = employeesss.emp_no
JOIN departments
ON dept_empp.dept_no = departments.dept_no
where departments.dept_name= 'Sales';

-- List each employee in the Sales and Development departments, including their employee number,
-- last name, first name,and department name.
SELECT dept_empp.emp_no, employeesss.last_name, employeesss.first_name, departments.dept_name
FROM dept_empp
JOIN employeesss
ON dept_empp.emp_no = employeesss.emp_no
JOIN departments
ON dept_empp.dept_no = departments.dept_no
where departments.dept_name= 'Sales' or departments.dept_name = 'Development';


-- List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "name_frequency"
FROM employeesss
GROUP BY last_name
ORDER BY name_frequency DESC
limit 10;
