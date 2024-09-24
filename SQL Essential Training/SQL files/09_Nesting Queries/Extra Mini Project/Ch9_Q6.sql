/*
Created By: Masae Wen
Create Date: 07/09/2024
Description: Write a SQL query that identifies Top 100 selling tracks & count by Genre
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
	TotalSell DESC
LIMIT 100;
	
-- 3. Count Genre of top 100 seeling track
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
			il.TrackId
		FROM
			InvoiceLine AS il
		GROUP BY
			il.TrackId
		ORDER BY
			SUM(il.UnitPrice) DESC
		LIMIT 100)
GROUP BY
	Genre
ORDER BY
	Count DESC;

-- 4. Create TABLE
CREATE TABLE Ch9_Q6 AS
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
			il.TrackId
		FROM
			InvoiceLine AS il
		GROUP BY
			il.TrackId
		ORDER BY
			SUM(il.UnitPrice) DESC
		LIMIT 100)
GROUP BY
	Genre
ORDER BY
	Count DESC;

-- 5. find % of YesSell/AllSell per Genre
SELECT
	ys.Genre,
	ys.Count AS YesSellCount,
	s.Count AS AllSellCount,
	round((CAST (ys.Count AS FLOAT)/s.Count)*100,2) AS YesSellPercent
FROM
	Ch9_Q6 AS ys -- YesSell
LEFT JOIN
	Ch9_Q4a AS s -- AllSell, as does not work
ON
	ys.Genre = s.Genre
ORDER BY
	YesSellPercent DESC; 

-- 6. Create TABLE (YesSellPercent)
CREATE TABLE Ch9_Q6b AS
SELECT
	ys.Genre,
	ys.Count AS YesSellCount,
	s.Count AS AllSellCount,
	round((CAST (ys.Count AS FLOAT)/s.Count)*100,2) AS YesSellPercent
FROM
	Ch9_Q6 AS ys -- YesSell
LEFT JOIN
	Ch9_Q4a AS s -- AllSell, as does not work
ON
	ys.Genre = s.Genre
ORDER BY
	YesSellPercent DESC; 