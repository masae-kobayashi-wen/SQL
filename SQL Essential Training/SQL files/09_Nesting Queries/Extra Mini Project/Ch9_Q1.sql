/*
Created By: Masae Wen
Create Date: 07/06/2024
Description: Write a SQL query that identifies Top 100 selling tracks.

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

-- 2. find Top 100 selling TrackId
SELECT
	TrackId,
	SUM(UnitPrice) AS TotalSell
FROM
	InvoiceLine
GROUP BY
	TrackId
ORDER BY
	TotalSell DESC;
	
-- 3.1 Need to join Track, Genre, InvoiceLine for Genre Name and UnitPrice
SELECT
	t.TrackId,
	t.Name AS TrackName,
	t.Composer,
	g.Name AS Genre,
	SUM(il.UnitPrice) AS TotalSell
FROM
	Track AS t
	LEFT JOIN Genre AS g
		ON t.GenreId = g.GenreId
	LEFT JOIN InvoiceLine AS il
		ON t.TrackId = il.TrackId
GROUP BY
	t.TrackId
ORDER By
	TotalSell DESC; -- 3503 rows (including tracks without sells)
	
-- 3.2 Compare the LEFT and INNER JOIN
SELECT
	t.TrackId,
	t.Name AS TrackName,
	t.Composer,
	g.Name AS Genre,
	SUM(il.UnitPrice) AS TotalSell
FROM
	Track AS t
	JOIN Genre AS g
		ON t.GenreId = g.GenreId
	JOIN InvoiceLine AS il
		ON t.TrackId = il.TrackId
GROUP BY
	t.TrackId
ORDER By
	TotalSell DESC; -- 1984 rows (excluding tracks without sells)

-- 4. Create TABLE
CREATE TABLE Ch9_Q1 AS
SELECT
	t.TrackId,
	t.Name AS TrackName,
	t.Composer,
	g.Name AS Genre,
	SUM(il.UnitPrice) AS TotalSell
FROM
	Track AS t
	LEFT JOIN Genre AS g
		ON t.GenreId = g.GenreId
	LEFT JOIN InvoiceLine AS il
		ON t.TrackId = il.TrackId
GROUP BY
	t.TrackId
ORDER By
	TotalSell DESC; -- 3503 rows (including tracks without sells)
	