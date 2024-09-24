/*
Created By: Masae Wen
Create Date: 07/11/2024
Description: Write a SQL query that identifies Top selling tracks & count by Genre.
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
	TotalSell
FROM
	Ch9_Q1
WHERE
	TotalSell = (SELECT MAX(TotalSell) FROM Ch9_Q1); -- need to use compound select extrac the max value 3.98 first 
	
-- 3. Count Genre of top selling track
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
	t.TrackId IN 
		(SELECT
			q1.TrackId
		FROM
			Ch9_Q1 AS q1 -- it's Q-one not Q-L
		WHERE
			q1.TotalSell = (SELECT MAX(q1.TotalSell) FROM Ch9_Q1 AS q1))
GROUP BY
	Genre
ORDER BY
	Count DESC;

-- 4. Create TABLE
CREATE TABLE Ch9_Q8 AS
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
	t.TrackId IN 
		(SELECT
			q1.TrackId
		FROM
			Ch9_Q1 AS q1 -- it's Q-one not Q-L
		WHERE
			q1.TotalSell = (SELECT MAX(q1.TotalSell) FROM Ch9_Q1 AS q1))
GROUP BY
	Genre
ORDER BY
	Count DESC;

-- 5. find % of YesSell/AllSell per Composer
SELECT
	ys.Genre,
	ys.Count AS YesSellCount,
	s.Count AS AllSellCount,
	round((CAST (ys.Count AS FLOAT)/s.Count)*100,2) AS YesSellPercent
FROM
	Ch9_Q8 AS ys -- YesSell
LEFT JOIN
	Ch9_Q4a AS s -- AllSell, as does not work
ON
	ys.Genre = s.Genre
ORDER BY
	YesSellPercent DESC; 

-- 6. Create TABLE (YesSellPercent)
CREATE TABLE Ch9_Q8b AS
SELECT
	ys.Genre,
	ys.Count AS YesSellCount,
	s.Count AS AllSellCount,
	round((CAST (ys.Count AS FLOAT)/s.Count)*100,2) AS YesSellPercent
FROM
	Ch9_Q8 AS ys -- YesSell
LEFT JOIN
	Ch9_Q4a AS s -- AllSell, as does not work
ON
	ys.Genre = s.Genre
ORDER BY
	YesSellPercent DESC; 