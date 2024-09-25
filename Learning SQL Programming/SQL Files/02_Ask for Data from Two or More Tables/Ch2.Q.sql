/*
Created By: Masae Wen
Create Date: 6/25/2024
Description: Chapter 2 - Code Challenge: Practice with JOINs

Task: Write a query that shows the count of team members in each region.
*/

SELECT s.region, p.team, COUNT(p.team)
FROM states AS s
JOIN people AS p 
	ON s.state_abbrev = p.state_code
GROUP BY s.region, p.team;

