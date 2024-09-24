/*
Created By: Masae Wen
Create Date: 09/20/2024
Description: Create Views
*/

CREATE VIEW V_AvgTotal AS
SELECT 
	round(avg(total),2) AS [Average Total]
FROM
	Invoice;