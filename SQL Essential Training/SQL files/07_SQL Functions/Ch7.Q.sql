/*
Created By: Masae Wen
Create Date: 05/26/2024
Description: Select customer's full name and transforms their postal code into a standardized five-digit format.

Note:
a list containing two columns: CustomerFullName and StandardizedPostalCode
Result should only include customers from the US
Order the results by the CustomerFullName field
*/

SELECT
	c.FirstName || ' ' || c.LastName AS CustomerFullName,
	substr(c.PostalCode,1,5) AS StandardizedPostalCode
FROM
	Customer AS c
WHERE
	c.Country = 'USA'
ORDER BY
	CustomerFullName;
	