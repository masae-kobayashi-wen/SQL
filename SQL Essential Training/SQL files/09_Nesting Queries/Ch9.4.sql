/*
Created By: Masae Wen
Create Date: 07/04/2024
Description: Returning multiple values from a subquery | Find if any other purchases were made on the invoice dates of the invoice id (251, 252, 254)
*/

-- find the dates of these InvoiceId first
SELECT
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceId IN (251, 252, 254);

-- find the invoices that match the dates identified above
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity	
FROM
	Invoice
WHERE
	InvoiceDate IN 
		(SELECT
			InvoiceDate
		FROM
			Invoice
		WHERE
			InvoiceId IN (251, 252, 254));




	