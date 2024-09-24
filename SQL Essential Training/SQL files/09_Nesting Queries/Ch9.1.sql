/*
Created By: Masae Wen
Create Date: 07/04/2024
Description: Subqueries | Gather data about all invoices that are less than the global average
*/

-- find Global average sales amount
SELECT 
	round(AVG(Total),2) AS [Average Total]
FROM
	Invoice;

-- find invoices that are less than the global average
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total <
		(SELECT round(AVG(Total),2) FROM Invoice)
ORDER BY
	total DESC;
	