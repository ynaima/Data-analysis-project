-- GROUP BY (GROUPS ROWS THAT HAVE THE SAME VALUES IN THE SPECIFIED COLUMNS THAT YOU ARE GROUPING ON) THEN WE USE AGGREGATE FUNCTIONS ON THESE ROWS

SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

-- if we are not using an aggregate function in the select column, then the column in the select and in the group by have to match


SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT salary
FROM employee_salary
GROUP BY salary
;


-- when using aggregate functions with the categorical column data

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

-- another aggregate max()
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY ( ASC default case - increasing - smallest to largest)
SELECT *
FROM employee_demographics
ORDER BY age;


-- ORDER BY ( DESC - decreasing - largest to smallest)
SELECT *
FROM employee_demographics
ORDER BY age DESC;

-- ORDER BY ( with two columns first with gender (default asc) then age, in descending order, )
SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;


-- difference between HAVING CLAUSE and WHERE CLAUSE 
-- HAVING CLAUSE comes after GROUP BY and filters at the aggregate level, WHERE does it at the row level

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary) > 20000
;
