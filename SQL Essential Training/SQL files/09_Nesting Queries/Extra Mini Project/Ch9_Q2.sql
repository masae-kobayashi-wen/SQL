/*
Created By: Masae Wen
Create Date: 07/06/2024
Description: Write a SQL query that identifies tracks with top Max total sell ($3.98).

Note:
- Return a list of the Track ID, Track Name, Composer, and Genre
for Top 100 selling tracks.
- Order by TotalSell of each track.
*/

-- 1. find all the unique selling TrackId
SELECT
	DISTINCT TrackId
FROM
	InvoiceLine
ORDER BY
	TrackId;

-- 2. find TrackId with top total sell of $3.98.
SELECT
	TrackId,
	TrackName,
	Composer,
	Genre,
	TotalSell
FROM
	Ch9_Q1
WHERE
	TotalSell = (SELECT MAX(TotalSell) FROM Ch9_Q1); -- need to use compound select extrac the max value 3.98 first 
	
-- 3. Create TABLE
CREATE TABLE Ch9_Q2 AS
SELECT
	TrackId,
	TrackName,
	Composer,
	Genre,
	TotalSell
FROM
	Ch9_Q1
WHERE
	TotalSell = (SELECT MAX(TotalSell) FROM Ch9_Q1);



	