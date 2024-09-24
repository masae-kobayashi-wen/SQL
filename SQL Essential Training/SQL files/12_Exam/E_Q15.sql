/*
Created By: Masae Wen
Create Date: 09/23/2024
Description: Exam | Using the Execute SQL tab, compose the SQL query that answers the following question: 
*/

-- Q17 How many invoices were billed to the city of Brussels?
SELECT 
	COUNT(*) AS [Number of Invoices billed to Brussels City]
FROM
	Invoice
WHERE
	BillingCity = 'Brussels';
			
