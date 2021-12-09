
-- Creat Mentorship Eligibility Table for years 1964 to 1965
SELECT DISTINCT ON (emp_no) employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
INTO mentorship_eligibilty_1964_1965
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN titles
ON (dept_emp.emp_no = titles.emp_no)
WHERE dept_emp.to_date = ('9999-01-01')
	AND (birth_date BETWEEN '1964-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- Create table grouping mentorship employees by titles
SELECT COUNT (emp_no), title
INTO mentorship_eligibilty_1964_1965_titles
FROM mentorship_eligibilty_1964_1965
GROUP BY mentorship_eligibilty_1964_1965.title
ORDER BY COUNT DESC;

-- Create a new table for all eligible employees for retirement by title for birthdates in 1952
SELECT employees.emp_no, 
	employees.first_name, 
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_1952_titles
FROM employees
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1952-12-31')
ORDER BY emp_no ASC;

--Create table to remove duplicates and keep only the most recent title of each employee
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
--INTO unique_1952_titles
FROM retirement_1952_titles
ORDER BY emp_no ASC, to_date DESC;

-- Create table grouping retiring employees born in 952 by titles
SELECT COUNT (emp_no), title
--INTO retiring_1952_titles
FROM unique_1952_titles
GROUP BY unique_1952_titles.title
ORDER BY COUNT DESC;

