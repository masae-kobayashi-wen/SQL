/*
Created By: Masae Wen
Create Date: 05/26/2024
Description: AGGREGATE Functions | What are our all time global sales?
*/

SELECT
	SUM(Total) AS [Total Sales],
	round(AVG(Total),2) AS [Average Sales],
	MAX(Total) AS [Maximun Sale],
	MIN(Total) AS [Minimum Sale],
	COUNT(*) AS [Sales Count]
FROM
	Invoice
