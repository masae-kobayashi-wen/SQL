/*
Created By: Masae Wen
Create Date: 05/25/2024
Description: list each customer along with their assigned support representative

Note:
list contains the first and last names of both customers and their assigned support representatives
Customer FirstName/LastName, Employee FirstName/LastName
Order the results by the support representative's last name, followed by the customer's last name

*/

SELECT
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	e.FirstName AS SupportRepFirstName,
	e.LastName AS SupportRepLastName
FROM
	Customer AS c
	JOIN Employee AS e ON c.SupportRepId = e.EmployeeId
ORDER BY
	e.LastName,
	c.LastName;