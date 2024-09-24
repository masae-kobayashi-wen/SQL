/*
Created By: Masae Wen
Create Date: 07/06/2024
Description: Write a SQL query that identifies tracks that never been sold.

Note:
- Return a list of the Track ID, Track Name, Composer, and Genre
for each track that has never been sold.
- Order by Track Name in ascending order
*/

-- 1. find all the unique selling TrackId
SELECT
	DISTINCT TrackId
FROM
	InvoiceLine
ORDER BY
	TrackId;
	
-- 2.1 Need to join Track and Genre for Genre Name
-- 2.2 Compare the LEFT and INNER JOIN
SELECT
	t.TrackId,
	t.Name,
	t.Composer,
	g.Name
FROM
	Track AS t
LEFT JOIN
	Genre AS g
ON
	t.GenreId = g.GenreId; -- 3503 rows

SELECT
	t.TrackId,
	t.Name,
	t.Composer,
	g.Name
FROM
	Track AS t
JOIN
	Genre AS g
ON
	t.GenreId = g.GenreId; -- 3503 rows
	
-- 3. find all the TrackId that are not selling
-- solution1
SELECT
	t.TrackId AS 'Track ID',
	t.Name AS 'Track Name',
	t.Composer,
	g.Name AS Genre
FROM
	Track AS t
LEFT JOIN
	Genre AS g
ON
	t.GenreId = g.GenreId
WHERE
	t.TrackId NOT IN 
		(SELECT
			DISTINCT il.TrackId
		FROM
			InvoiceLine AS il
		ORDER BY
			il.TrackId)
ORDER BY
	t.Name;

-- solution2
SELECT
	t.TrackId AS "Track ID",
	t.Name AS "Track Name",
	t.Composer,
	g.Name AS Genre
FROM
	Track t
	JOIN Genre g ON t.GenreId = g.GenreId
WHERE
	t.TrackId NOT IN (
		SELECT DISTINCT il.TrackId
		FROM InvoiceLine il
	)
ORDER BY
	"Track Name" ASC;

-- 4. Create TABLE
CREATE TABLE Ch9_Q AS
SELECT
	t.TrackId AS 'Track ID',
	t.Name AS 'Track Name',
	t.Composer,
	g.Name AS Genre
FROM
	Track AS t
LEFT JOIN
	Genre AS g
ON
	t.GenreId = g.GenreId
WHERE
	t.TrackId NOT IN 
		(SELECT
			DISTINCT il.TrackId
		FROM
			InvoiceLine AS il
		ORDER BY
			il.TrackId)
ORDER BY
	t.Name;
	




	