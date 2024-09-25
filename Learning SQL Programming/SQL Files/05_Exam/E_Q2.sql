/*
Created By: Masae Wen
Create Date: 06/27/2024
Description: DA C8 Summative Assessment Challenge - Q2

Task:
Write a SQL query that retrieves a list of all people 
including their id number, first name, last name, age, and state code who have a state code of CA. 
How many rows of data are in the result?
(Hint: Mouse over the table icon in the lower right corner of the page to see the number of rows)?​
*/

SELECT id_number, first_name, last_name, age, state_code
FROM people
WHERE state_code = 'CA';