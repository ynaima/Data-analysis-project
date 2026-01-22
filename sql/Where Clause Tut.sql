# WHERE CLAUSE -- for filtering rows

SELECT * 
FROM employee_salary
WHERE first_name = 'Donna'
;

#Comparison Operators(> < = >= <= !=)

SELECT * 
FROM employee_salary
WHERE salary > 50000
;

SELECT * 
FROM employee_salary
WHERE salary >= 70000
;


SELECT * 
FROM employee_demographics
WHERE gender = 'male'
AND
birth_date > '1983-01-01'
;

# Logical Operators(AND OR NOT)

SELECT * 
FROM employee_salary
WHERE salary > 70000
AND  first_name != 'ben'
;

SELECT * 
FROM employee_demographics
WHERE age > 25
AND NOT gender = 'Female'
;


SELECT * 
FROM employee_demographics
WHERE (age >25 AND  birth_date <= '1985-01-01')
OR NOT gender = 'male'
;

#Like keyword and Use of Wild cards '%' and '_'
#'%' - any character  '_'one character


SELECT * 
FROM employee_demographics
WHERE first_name LIKE "%ri%"
;


#name starts with a followed by two characters and then any other characters after
SELECT * 
FROM employee_demographics
WHERE first_name LIKE "a__%"
;

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE "%88%"
;

#starts with character a followed by only three other characters 
SELECT * 
FROM employee_demographics
WHERE first_name LIKE "a___"
;