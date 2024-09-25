/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Modify data in a table
*/

-- Check the output first before making multiple updates at once
SELECT * FROM people WHERE company = 'Fisher LLC';

-- Update two records at once
UPDATE people SET company = 'Megacorp Inc'
WHERE company = 'Fisher LLC'
