/*
Created By: Masae Wen
Create Date: 06/27/2024
Description: DA C8 Summative Assessment Challenge - Q4

Task:
Write a SQL query that lists the city, state code, and state name for every record in the people table?
(Hint: You’re going to need to use one of the JOIN types to get the state name from the states table)
*/

SELECT p.city, p.state_code, s.state_name 
FROM people AS p
LEFT JOIN states AS s
	ON p.state_code = s.state_abbrev;

/*	
--Initial screen: any difference in INNER and LEFT JOIN (left=people)?
SELECT *
FROM people AS p
LEFT JOIN states AS s
	ON p.state_code = s.state_abbrev; -- returns 1000 rows

SELECT *
FROM people AS p
JOIN states AS s
	ON p.state_code = s.state_abbrev; -- returns 1000 rows
*/	
