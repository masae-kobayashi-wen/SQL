/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Compound Select
*/

-- When you don't know the state_code/abbreviation for Minnesota
SELECT *
FROM people
WHERE state_code = (
	SELECT state_abbrev FROM states WHERE state_name = 'Minnesota'
);