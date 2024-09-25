/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Chapter 4 - Code Challenge: Identifying the correct record

Task: 
Create a SQL statement that shows the id_number and other confirmatory information
for Alice, from Florida, who is a member of the Cobras.
*/

SELECT 
	id_number, 
	first_name, 
	state_code, team 
FROM 
	people 
WHERE 
	first_name = 'Alice' AND 
	state_code = 'FL' AND 
	team LIKE '%Cobras%';