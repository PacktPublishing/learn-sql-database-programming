#select one column that is distinct 
USE lahmansbaseballdb;
SELECT distinct playerid FROM appearances;

#select multiple columns that are distinct 
USE lahmansbaseballdb;
SELECT DISTINCT teamid, playerid from appearances;