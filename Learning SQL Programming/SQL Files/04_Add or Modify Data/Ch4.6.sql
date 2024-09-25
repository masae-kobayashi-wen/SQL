/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Modify data in a table
*/

-- Check the unique identifier
SELECT * FROM people WHERE id_number = 175;

-- The best way is to use the unique identifier
UPDATE people
SET last_name = 'Morrison'
WHERE id_number = 175;
