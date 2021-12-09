-- Retrieve employee information by employee number and first and last name 
--from employees table
SELECT emp_no, first_name, last_name
FROM employees;

-- Retrieve employee title and from and to date from titles table
SELECT title, from_date, to_date
FROM titles;

-- Create a new table for all eligible employees for retirement by title
SELECT employees.emp_no, 
	employees.first_name, 
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

--Retrieve the employee number, first and last name, and title columns
-- from the Retirement Titles table
SELECT emp_no, first_name, last_name, title
FROM retirement_titles;

--Create table to remove duplicates and keep only the most recent title of each employee
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

-- Retrieve the number of titles from the Unique Titles table
SELECT COUNT (title)
FROM unique_titles;

-- Create table grouping retiring employees by titles
SELECT COUNT (emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY COUNT DESC;

-- Creat Mentorship Eligibility Table
SELECT DISTINCT ON (emp_no) employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
INTO mentorship_eligibilty
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN titles
ON (dept_emp.emp_no = titles.emp_no)
WHERE dept_emp.to_date = ('9999-01-01')
	AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

