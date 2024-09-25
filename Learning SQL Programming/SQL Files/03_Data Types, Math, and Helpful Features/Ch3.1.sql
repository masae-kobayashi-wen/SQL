/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Math in SQL
*/

SELECT team, COUNT(*), SUM(quiz_points), SUM(quiz_points)/COUNT(*), AVG(quiz_points)
FROM people
GROUP BY team;

-- SUM(quiz_points)/COUNT(*): returns an integer because integer/integer
-- AVG(quiz_points): returns a float with decimals