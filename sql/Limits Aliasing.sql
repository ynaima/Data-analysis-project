-- Limits & Aliasing --
-- Limit is best used with order by

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;


-- start from the 2nd row and take the one after that 

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- ALIASING: renaming columns mostly-- 

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
ORDER BY gender;


-- when the AS keyword is not used it is implied --

SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
ORDER BY gender;