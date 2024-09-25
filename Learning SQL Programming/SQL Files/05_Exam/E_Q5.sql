/*
Created By: Masae Wen
Create Date: 06/27/2024
Description: DA C8 Summative Assessment Challenge - Q5

Task:
Write a SQL query that finds the average quiz points value for people from the city of Los Angeles.
*/

SELECT city, AVG(quiz_points)
FROM people
WHERE city = 'Los Angeles'
GROUP BY city; -- GROUP BY need to be after WHERE!

/*
-- Initial check 
SELECT first_name, last_name, quiz_points, city 
FROM people
WHERE city = 'Los Angeles';
*/

