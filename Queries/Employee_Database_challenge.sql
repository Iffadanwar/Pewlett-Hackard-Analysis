--------MODULE 7 CHALLENGE---------
-------- DELIVERABLE 1 ----------
-- 1-7. USED the next line to correct mistake
DROP TABLE retirement_titles;
--Retrieve needed columns 
SELECT e.emp_no, 
	   e.first_name, 
	   e.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date
--CREATE NEW TABLE USING 'INTO'
INTO retirement_titles
--creating alias and joining the 2 tables using emp_no as a join
FROM employees AS e
	LEFT JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
--Filtering the data by birthdays between 1952 and 1955
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--Ordering by emp_NO
ORDER BY emp_no;

SELECT * FROM title_emp_info;

-- 8 - 15. Use Dictinct with Orderby to remove duplicate rows
--Retrieve needed columns 
--Using DISTICT ON (emp_no) to remove dulicate emp_no
SELECT DISTINCT ON (emp_no) emp_no, 
			first_name, 
			last_name, 
			title
--Label table
INTO distinct_retire_title 
--Calling on table needed
FROM retirement_titles
--Exclude those employees that have already left the company
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- 16 - 22. retrieve the number of titles from the Unique Titles table.
SELECT COUNT(DISTINCT title)
FROM distinct_retire_title;

--Drops table to fix mistakes
DROP TABLE retiring_titles;
--Then, create a Retiring Titles table to hold the required information.
SELECT COUNT(drt.emp_no),
			drt.title
INTO retiring_titles
FROM distinct_retire_title as drt
--Group the table by title, then sort the count column in descending order.
GROUP BY title 
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles


-------- DELIVERABLE 2 ----------
--1 - 11. Retrieve needed columns 
--Use a DISTINCT ON statement to retrieve the first occurrence of the employee number
SELECT DISTINCT ON(emp_no) e.emp_no,
	    e.first_name,
	    e.last_name,
	    e.birth_date,
	    de.from_date,
	    de.to_date,
	    t.title
--Create a new table using the INTO clause.
INTO mentorship_eligibilty
--Join the Employees and the Department Employee tables on the primary key.
FROM employees as e
	LEFT JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
--Join the Employees and the Titles tables on the primary key.
	LEFT JOIN titles as t
		ON (e.emp_no = t.emp_no)
--FILTER DATA
WHERE (t.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
--Order the table by the employee number.
ORDER BY e.emp_no;