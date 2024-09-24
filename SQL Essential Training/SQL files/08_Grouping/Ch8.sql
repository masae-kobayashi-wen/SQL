/*
Created by: Masae Wen
Create Date: 05/27/2024
Description: Grouping by more than one filed at a time | What are the average invoice totals by billing country and city?
*/

SELECT
	BillingCountry,
	BillingCity,
	round(avg(total),2)
FROM
	Invoice
GROUP BY
	BillingCountry, BillingCity
ORDER BY
	BillingCountry
	