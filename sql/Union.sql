-- UNIONS: joining rows of data together using SELECT statements (must select same number of columns)

-- this union is by default distinct - only returns unique rows if you select the same columns
SElect first_name, last_name
FROM employee_demographics
UNION 
SElect first_name, last_name
FROM employee_salary;

-- this union returns duplicate rows if you select different columns
SElect first_name, last_name, gender
FROM employee_demographics
UNION
SElect first_name, last_name, occupation
FROM employee_salary;


-- we can use union all to select the same columns but have all the rows returned(include duplicates)
SElect first_name, last_name
FROM employee_demographics
UNION ALL
SElect first_name, last_name
FROM employee_salary;


-- USE CASE: find people in both genders over 40 and highly paid

SElect first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender ='Male'
UNION
SElect first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender ='Female'
UNION
SElect first_name, last_name, 'Highly Paid employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;