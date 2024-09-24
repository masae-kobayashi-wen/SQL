/*
Created By: Masae Wen
Create Date: 07/09/2024
Description: Write a SQL query that identifies Top 100 selling tracks & count by Composer
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
	
-- 3. Count composer of top selling track
SELECT
	t.Composer,
	COUNT(t.Composer) AS Count
FROM
	Track AS t
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
	t.Composer
ORDER BY
	Count DESC;

-- 4. Create TABLE
CREATE TABLE Ch9_Q5 AS
SELECT
	t.Composer,
	COUNT(t.Composer) AS Count
FROM
	Track AS t
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
	t.Composer
ORDER BY
	Count DESC;

-- 5. find % of YesSell/AllSell per Composer
SELECT
	ys.Composer,
	ys.Count AS YesSellCount,
	s.Count AS AllSellCount,
	round((CAST (ys.Count AS FLOAT)/s.Count)*100,2) AS YesSellPercent
FROM
	Ch9_Q5 AS ys -- YesSell
LEFT JOIN
	Ch9_Q3a AS s -- AllSell, as does not work
ON
	ys.Composer = s.Composer
ORDER BY
	YesSellPercent DESC; 

-- 6. Create TABLE (YesSellPercent)
CREATE TABLE Ch9_Q5b AS
SELECT
	ys.Composer,
	ys.Count AS YesSellCount,
	s.Count AS AllSellCount,
	round((CAST (ys.Count AS FLOAT)/s.Count)*100,2) AS YesSellPercent
FROM
	Ch9_Q5 AS ys -- YesSell
LEFT JOIN
	Ch9_Q3a AS s -- AllSell, as does not work
ON
	ys.Composer = s.Composer
ORDER BY
	YesSellPercent DESC; 