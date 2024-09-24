/*
Created By: Masae Wen
Create Date: 05/23/2024
Description: 
- Code Challenge: Concise track pricing report
- Generate a report listing track names alongside their unit prices
	
Note:
Resulting field names: Track Name, Price
- Name = "Track Name"
- UnitPrice = "Price"
Only include the first 20 tracks, sorted by track name 
State the purpose of Query
*/

SELECT 
	t.Name AS "Track Name", -- 'Track Name', [Track Name] all work.
	t.UnitPrice AS Price
FROM 
	Track t
ORDER BY 
	t.Name -- Name works too
LIMIT 20;

	
