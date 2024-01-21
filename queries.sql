SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries as s
ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no DESC;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS d
ON (dm.dept_no = d.dept_no)
INNER JOIN employees AS e
ON (dm.emp_no = e.emp_no);

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (d.dept_no = d.dept_no)
ORDER by e.emp_no;

--list first name, last name, and sex of
--each employee whose first name is hercules and whose last name beings with the letter B

SELECT first_name, last_name, birth_date, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- list each employee in the sales department,
--including their employee number, last name and first name and department.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

--list each employee in the sales and development 

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY e.emp_no;

--list the frequency counts, in descending order,
-- of all the employee last names (that is, how many employees share each last name),
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees 
GROUP BY last_name
ORDER BY "Last Name Count" DESC;



