/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Compound Select
*/

-- Wrong: Returns only the first person with the Max quiz point
SELECT first_name, last_name, MAX(quiz_points)
FROM people; 

-- Correct: Returns the list of people with the max quiz point
SELECT first_name, last_name, quiz_points
FROM people
WHERE quiz_points = (SELECT MAX(quiz_points) FROM people); -- WHERE quiz_points = MAX(quiz_points) gives error message. Need subselect! 