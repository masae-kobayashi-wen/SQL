/*
Created By: Masae Wen
Create Date: 09/20/2024
Description: Views and Joins
*/

CREATE VIEW V_Tracks_InvoiceLine AS
SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine il
INNER JOIN
	Track t
ON
	il.TrackId = t.TrackId;