/*
Created By: Masae Wen
Create Date: 07/09/2024
Description: Write a SQL query that identifies tracks that never been sold & count by Genre
*/

-- 1. find all the unique selling TrackId
SELECT
	DISTINCT TrackId
FROM
	InvoiceLine
ORDER BY
	TrackId;
	
-- 2. Count all the track by Genre
SELECT
	g.Name AS Genre,
	COUNT(g.Name) AS Count
FROM
	Track AS t
LEFT JOIN
	Genre AS g
ON
	t.GenreId = g.GenreId
GROUP BY
	Genre
ORDER BY
	Count DESC; -- 25 rows
	
-- 3. Count not selling track by Genre
SELECT
	g.Name AS Genre,
	COUNT(g.Name) AS Count
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
GROUP BY
	Genre
ORDER BY
	Count DESC; -- 25 rows

-- 4. Create TABLE (not selling)
CREATE TABLE Ch9_Q4 AS
SELECT
	g.Name AS Genre,
	COUNT(g.Name) AS Count
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
GROUP BY
	Genre
ORDER BY
	Count DESC;

-- 5. Create TABLE (all)
CREATE TABLE Ch9_Q4a AS
SELECT
	g.Name AS Genre,
	COUNT(g.Name) AS Count
FROM
	Track AS t
LEFT JOIN
	Genre AS g
ON
	t.GenreId = g.GenreId
GROUP BY
	Genre
ORDER BY
	Count DESC;
	
-- 6. find % of NotSell/AllSell per Genre
SELECT
	ns.Genre,
	ns.Count AS NotSellCount,
	s.Count AS AllSellCount,
	round((CAST (ns.Count AS FLOAT)/s.Count)*100,2) AS NotSellPercent
FROM
	Ch9_Q4 AS ns -- NotSell
LEFT JOIN
	Ch9_Q4a AS s -- AllSell, as does not work
ON
	ns.Genre = s.Genre
ORDER BY
	NotSellPercent DESC; -- 25 rows

-- 7. Create TABLE (NotSellPercent)
CREATE TABLE Ch9_Q4b AS
SELECT
	ns.Genre,
	ns.Count AS NotSellCount,
	s.Count AS AllSellCount,
	round((CAST (ns.Count AS FLOAT)/s.Count)*100,2) AS NotSellPercent
FROM
	Ch9_Q4 AS ns -- NotSell
LEFT JOIN
	Ch9_Q4a AS s -- AllSell, as does not work
ON
	ns.Genre = s.Genre
ORDER BY
	NotSellPercent DESC; -- 25 rows

	