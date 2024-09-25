/*
Created By: Masae Wen
Create Date: 6/25/2024
Description: Grouping Results
*/

-- Wrong: Only returns one row with the total number of first name records
SELECT first_name, count(first_name)
FROM people;

-- Correct: Returns the count of each first name
SELECT first_name, count(first_name)
FROM people
GROUP BY first_name;

-- Note: No error message does not mean the results actually make sense. Need to check if the results make sense.