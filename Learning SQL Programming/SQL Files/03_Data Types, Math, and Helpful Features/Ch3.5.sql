/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Transforming data
*/

-- Returns quiz points in ascending order, except 100 shows up first.
SELECT quiz_points
FROM people
ORDER BY CAST(quiz_points AS CHAR); -- 99 > 100 for string comparison because the first character (9 > 1)

-- Returns quiz points in ascending order
SELECT quiz_points
FROM people
ORDER BY quiz_points;