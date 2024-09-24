/*
Created By: Masae Wen
Create Date: 07/04/2024
Description: Subqueries without Aggregate Functions | Give all the invoices that have occurred after invoice date of invoice id (251)
*/

-- find the date of this InvoiceId first
SELECT
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceId = 251;

-- find the invoices after the identified date above
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity	
FROM
	Invoice
WHERE
	InvoiceDate > 
		(SELECT
			InvoiceDate
		FROM
			Invoice
		WHERE
			InvoiceId = 251);




	