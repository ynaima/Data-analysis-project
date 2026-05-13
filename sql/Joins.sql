-- Joins :INNER JOIN, OUTER JOINS(LEFT & RIGHT), SELF JOIN

-- inner join (matches from tables joined- intersection)
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;


-- we can select specific columns from both tables
SELECT dem.employee_id, occupation, salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- OUTER JOINS: LEFT JOIN & RIGHT JOIN
-- left join (all left plus only matching from right)
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;


-- SELF join (table values pointing to its self)
SELECT *
FROM employee_demographics AS dem1
JOIN employee_demographics AS dem2
ON dem1.employee_id + 1 = dem2.employee_id;


-- Joining multiple tables together using common columns

SELECT *
FROM employee_demographics AS dem1
INNER JOIN employee_salary AS sal
ON dem1.employee_id  = sal.employee_id
INNER JOIN parks_departments AS pd
ON sal.dept_id = pd.department_id
;
