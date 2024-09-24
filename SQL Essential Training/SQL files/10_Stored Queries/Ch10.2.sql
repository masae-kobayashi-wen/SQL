/*
Created By: Masae Wen
Create Date: 09/20/2024
Description: Edit Views
*/

DROP VIEW "main"."V_AvgTotal";
CREATE VIEW V_AvgTotal AS
SELECT 
	avg(total) AS [Average Total]
FROM
	Invoice;