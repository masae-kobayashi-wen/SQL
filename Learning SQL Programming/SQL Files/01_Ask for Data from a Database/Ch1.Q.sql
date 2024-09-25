/*
Created By: Masae Wen
Create Date: 6/25/2024
Description: Chapter 1- Code Challenge: Retrieve data from the database

Task:
- Create list of participant in Colorado (state_code CO) with the columns
team, shirt_or_hat, first_name, last_name
- Organize the list so that the participants are sorted by their team name,
then by whether they want shirt or hat, and finally by their last name
- Use descending order for the last name and ascending order for the other sorting fields
*/

SELECT team, shirt_or_hat, first_name, last_name
FROM people
WHERE state_code = 'CO'
ORDER BY team, shirt_or_hat, last_name DESC;
