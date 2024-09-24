/*
Created By: Masae Wen
Create Date: 05/24/2024
Description: 
- Code Challenge: Categorize tracks by price
- Write SQL that selects track names, composers, and unit prices and categorizes each track based on its price
- to offer insights into range of music available for purchase
	
Price Categories:
Budget: Tracks priced at $0.99 or less
Regular: Tracks priced between $1.00 and $1.49
Premium: Tracks priced between $1.50 and $1.99
Exclusive: Tracks priced above $1.99

Note:
Resulting field names: Track Name, Composer, Price
The PriceCategory field contains categories as defiend above
The results should be ordered by the UnitPrice in ascending order
State the purpose of Query
*/

SELECT
	Name AS 'Track Name',
	Composer,
	UnitPrice AS Price,
	CASE
		WHEN UnitPrice < 1.00 THEN 'Budget'
		WHEN UnitPrice BETWEEN 1.00 AND 1.49 THEN 'Regular'
		WHEN UnitPrice BETWEEN 1.50 AND 1.99 THEN 'Premium'
		ELSE 'Exclusive'
	END AS PriceCategory
FROM
	Track
ORDER BY
	UnitPrice;
