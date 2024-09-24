/*
Created By: Masae Wen
Create Date: 09/23/2024
Description: Exam | Using the Execute SQL tab, compose the SQL query that answers the following question: 
*/

-- Q14 How many tracks in the WSDA music database do not have a composer listed?
SELECT 
	COUNT(*) AS [Number of Tracks listed w/o a Composer]
FROM
	Track
WHERE
	Composer = 'unavailable';
			
