/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Chapter 3 - Code Challenge: State score metrics

Task: 
Write a query that returns the maximum and average scores for each state,
along with the state's name, sorted from highest to lowest average score.
*/

SELECT s.state_name AS STATE, MAX(p.quiz_points) AS MAXPOINTS, AVG(p.quiz_points) AS AVGPOINTS
FROM people AS p
JOIN states AS s
	ON p.state_code = s.state_abbrev
GROUP BY STATE
ORDER BY AVGPOINTS DESC;
