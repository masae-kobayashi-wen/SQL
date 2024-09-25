/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Creating aliases with AS
*/

SELECT first_name AS firstname, UPPER(last_name) AS surname
FROM people
WHERE firstname = 'Laura'; -- Start using aliases in the statements once created