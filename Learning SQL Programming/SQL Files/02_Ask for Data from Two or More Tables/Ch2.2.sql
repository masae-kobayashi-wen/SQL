/*
Created By: Masae Wen
Create Date: 6/25/2024
Description: Grouping Results
*/

SELECT state_code, quiz_points, COUNT(quiz_points)
FROM people
GROUP BY state_code, quiz_points;

-- Note: Need to group by two fields, state_code and then quiz_points to get meaningful results