/*
Created By: Masae Wen
Create Date: 6/26/2024
Description: Add data to a table
*/

-- Add three new rows
INSERT INTO people
(first_name, last_name)
VALUES
('George', 'White'),
('Jenn', 'Smith'),
('Carol', NULL); -- Need to specify an empty entry with NULL (or 0, etc.) as a placeholder, or will get an error message.