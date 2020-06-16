#delete only some records from a table 
USE lahmansbaseballdb;
SELECT * FROM collegeplaying
WHERE playerid = 'blaloha01';

USE lahmansbaseballdb;
DELETE FROM collegeplaying
WHERE playerid = 'blaloha01'
AND (schoolid IS NULL OR yearid IS NULL); 

#delete all data from a table 
USE yourschema; 
DELETE FROM allstarfull;

#alternate script to delete all data from table 
USE yourschema;
TRUNCATE TABLE allstarfull;
