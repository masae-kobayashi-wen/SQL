/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Modify data in a table
*/

-- Should check if the condition used here is unique
-- Is there only one person with first name 'Carlos' and city 'Houston'?
SELECT first_name 
FROM people 
WHERE first_name = 'Carlos' AND city = 'Houston';

-- If the incorrect entry is unknown, add multiple conditions to achieve a unique result
UPDATE people
SET last_name = 'Morrison'
WHERE first_name = 'Carlos' AND city = 'Houston';
