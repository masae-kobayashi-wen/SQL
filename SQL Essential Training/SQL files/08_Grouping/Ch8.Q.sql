/*
Created By: Masae Wen
Create Date: 05/27/2024
Description: Calculate average spending amount of customers in each City?

Note:
a list containing two columns: City and AverageSpending
The list should be in ascending order by city name
Average spending amount should be rounded to two decimal places
*/

SELECT
	BillingCity AS City,
	round(avg(total),2) AS AverageSpending
FROM
	Invoice i
GROUP BY
	BillingCity
ORDER BY
	City ASC;
