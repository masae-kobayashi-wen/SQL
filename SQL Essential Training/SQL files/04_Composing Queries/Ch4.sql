/*
Ctreated By: Masae Wen
Create Date: 05/23/2024
Description: This query displays all customer's first, last names and email addresses.
*/

SELECT 
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL
FROM 
	Customer
ORDER BY 
	FirstName ASC,
	LastName DESC
LIMIT 10	

	