/*
Created By: Masae Wen
Create Date: 07/04/2024
Description: Subqueries in the SELECT | How is each city performing against global average sales?
*/

SELECT
	BillingCity,
	round(AVG(Total),2) AS [City Average],
	(SELECT round(AVG(Total),2) FROM Invoice) AS [Global Average]
FROM
	Invoice
GROUP BY
	BillingCity
ORDER BY
	BillingCity;
	