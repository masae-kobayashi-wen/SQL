/*
Created By: Masae Wen
Create Date: 05/25/2024
Description: JOINS on more than two tables | What employees are responsible for the 10 highest individual sales?
*/

SELECT
	e.FirstName AS 'Employee FisrtName',
	e.LastName AS 'Employee LastName',
	e.EmployeeId,
	c.FirstName AS 'Customer FirstName',
	c.LastName AS 'Customer LastName',
	c.SupportRepId,
	i.CustomerId,
	i.total
FROM 
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
INNER JOIN
	Employee AS e
ON
	c.SupportRepId = e.EmployeeId
ORDER BY
	i.total DESC
LIMIT 10
