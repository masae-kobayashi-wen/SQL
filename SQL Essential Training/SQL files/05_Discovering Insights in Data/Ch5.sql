/*
Created By: Masae Wen
Create Date: 05/24/2024
Description: Which city accounts for our top performers?
*/

/*
WSDA Music Sales Goal:
They want as many customer as possible to spend $7.00 and $15.00 

Sales categories: 
Baseline Purchase - Between $0.99 and $1.99
Low Purchase - Between $2.00 and $6.99
Target Purchase - Between $7.00 and $15.00
Top Performer - Above $15.00
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE 
	WHEN total < 2.00 THEN 'Baseline Purchase'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
	ELSE 'Top Performer'
	END AS PurchaseType
FROM
	Invoice
WHERE
	PurchaseType = 'Top Performer'
ORDER BY
	BillingCity
