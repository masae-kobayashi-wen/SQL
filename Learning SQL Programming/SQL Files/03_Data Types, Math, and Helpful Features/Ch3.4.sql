/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Transforming data
*/

-- Returns 1st to 4th characters of a string
SELECT first_name, SUBSTR(last_name, 1, 4)
From people;

-- Returns last two characters of a string
SELECT first_name, SUBSTR(last_name, -2) -- Negative number: counts from the end instead of the beginning
From people;

-- Returns first names replaced 'a' with '-'
SELECT REPLACE(first_name, 'a', '-')
From people;

