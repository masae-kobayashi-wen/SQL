/*
Created By: Masae Wen
Create Date: 09/23/2024
Description: Exam | Using the Execute SQL tab, compose the SQL query that answers the following question: 
*/

-- Q12 How many Customer LastNames start with G?
SELECT
	COUNT(*) AS [Number of Customers whose LastName starts with G]
FROM
	Customer
WHERE
	LastName like 'G%'; -- need to use like instead of =
			
