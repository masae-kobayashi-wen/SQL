/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Modify data in a table
*/

-- If the incorrect entry is known
UPDATE people
SET last_name = 'Morrison'
WHERE last_name = 'Morrrison';

-- Should check if the condition used here is unique
-- Is there only one person with first name 'Carlos' and city 'Houston'?
SELECT first_name 
FROM people 
WHERE first_name = 'Carlos' AND city = 'Houston';

-- Correct2: If the incorrect entry is unknown, add multiple conditions to achieve a unique result
UPDATE people
SET last_name = 'Morrison'
WHERE first_name = 'Carlos' AND city = 'Houston';
