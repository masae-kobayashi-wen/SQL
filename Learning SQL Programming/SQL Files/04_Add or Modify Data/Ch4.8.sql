/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Removing data from a table
*/

-- Delete all the records form the table people
DELETE FROM people;

-- Check the data to delete first
SELECT * FROM people WHERE id_number = 1001;

-- Use the unique identifier to delete
DELETE FROM people WHERE id_number = 1001;

-- Check the data to delete first
SELECT * FROM people WHERE quiz_points IS NULL; 

-- Delete records with NULL
DELETE FROM people WHERE quiz_points IS NULL;