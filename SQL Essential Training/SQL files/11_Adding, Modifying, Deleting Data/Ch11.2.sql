/*
Created By: Masae Wen
Create Date: 09/20/2024
Description: DML | Updating Data
*/

UPDATE 
	Artist
SET 
	Name = 'Damien Marley'
WHERE 
	ArtistId = 276;

/*	
Note:
This code runs without errors even if the record you want to update does not exist, and no changes will be made to the original database.
Make sure to check that the record you want to update exists in advance.
*/