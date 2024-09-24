/*
Created By: Masae Wen
Create Date: 07/09/2024
Description: Write a SQL query that identifies tracks that never been sold & count by Composer
*/

-- 1. find all the unique selling TrackId
SELECT
	DISTINCT TrackId
FROM
	InvoiceLine
ORDER BY
	TrackId;
	
-- 2. Count all the track by Composer
SELECT
	Composer,
	COUNT(Composer) AS Count
FROM
	Track
GROUP BY
	Composer
ORDER BY
	Count DESC; -- 1475 rows
	
-- 3. Count not selling track by composer
SELECT
	t.Composer,
	COUNT(t.Composer) AS Count
FROM
	Track AS t
WHERE
	t.TrackId NOT IN 
		(SELECT
			DISTINCT il.TrackId
		FROM
			InvoiceLine AS il
		ORDER BY
			il.TrackId)
GROUP BY
	t.Composer
ORDER BY
	Count DESC; -- 838 rows

-- 4. Create TABLE (not selling)
CREATE TABLE Ch9_Q3 AS
SELECT
	t.Composer,
	COUNT(t.Composer) AS Count
FROM
	Track AS t
WHERE
	t.TrackId NOT IN 
		(SELECT
			DISTINCT il.TrackId
		FROM
			InvoiceLine AS il
		ORDER BY
			il.TrackId)
GROUP BY
	t.Composer
ORDER BY
	Count DESC; 

-- 5. Create TABLE (all)
CREATE TABLE Ch9_Q3a AS
SELECT
	Composer,
	COUNT(Composer) AS Count
FROM
	Track
GROUP BY
	Composer
ORDER BY
	Count DESC;
	
-- 6. find % of NotSell/AllSell per Composer
SELECT
	ns.Composer,
	ns.Count AS NotSellCount,
	s.Count AS AllSellCount,
	round((CAST (ns.Count AS FLOAT)/s.Count)*100,2) AS NotSellPercent
FROM
	Ch9_Q3 AS ns -- NotSell
LEFT JOIN
	Ch9_Q3a AS s -- AllSell, as does not work
ON
	ns.Composer = s.Composer
ORDER BY
	NotSellPercent DESC; -- 838 rows
	
-- 7. Create TABLE (NotSellPercent)
CREATE TABLE Ch9_Q3b AS
SELECT
	ns.Composer,
	ns.Count AS NotSellCount,
	s.Count AS AllSellCount,
	round((CAST (ns.Count AS FLOAT)/s.Count)*100,2) AS NotSellPercent
FROM
	Ch9_Q3 AS ns -- NotSell
LEFT JOIN
	Ch9_Q3a AS s -- AllSell, as does not work
ON
	ns.Composer = s.Composer
ORDER BY
	NotSellPercent DESC; -- 838 rows

--8. Troubleshoting
SELECT 11/44; -- resulting 0...wrong
SELECT CAST(11 AS FLOAT) / 44; -- resulting 0.25...correct!
-- SQLite does not have float() function
	