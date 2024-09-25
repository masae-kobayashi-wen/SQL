/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Modify data in a table
*/

-- Should check if the condition used here is unique
-- Is there only one person with first name 'Carlos'?
SELECT first_name FROM people WHERE first_name = 'Carlos';

-- Wrong: Update multiple records by mistake
UPDATE people
SET last_name = 'Morrison'
WHERE first_name = 'Carlos';

