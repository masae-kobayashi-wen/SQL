/*
Created By: Masae Wen
Create Date: 06/27/2024
Description: DA C8 Summative Assessment Challenge - Q3

Task:
Write a SQL query that finds the first name, last name, and age 
of the oldest person in the people table. 
Is it just one person, or are there actually multiple people who are the same age?
*/

SELECT first_name, last_name, age
FROM people
WHERE age = (SELECT MAX(age) FROM people);

--initial check
SELECT first_name, last_name, age
FROM people
ORDER BY age DESC;

--final check
SELECT first_name, last_name, age
FROM people
WHERE age = 60;