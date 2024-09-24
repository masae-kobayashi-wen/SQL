/*
Created By: Masae Wen
Create Date: 07/04/2024
Description: Subqueries and DISTINCT | Which tracks are not selling?
*/

-- find all the unique selling TrackId
SELECT
	DISTINCT TrackId
FROM
	InvoiceLine
ORDER BY
	TrackId;
	
-- find all the TrackId that are not selling
SELECT
	TrackId,
	Composer,
	Name
FROM
	Track
WHERE
	TrackId NOT IN 
		(SELECT
			DISTINCT TrackId
		FROM
			InvoiceLine
		ORDER BY
			TrackId);




	