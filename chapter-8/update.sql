#update certain rows in a table 
USE lahmansbaseballdb;
UPDATE collegeplaying
SET schoolID = 'sandiego', yearid = 2000
WHERE playerid = 'blaloha01';

USE lahmansbaseballdb;
UPDATE collegeplaying
SET yearid = 1999
WHERE playerid = 'blaloha01';

#update all rows in a table 
USE lahmansbaseballdb;
UPDATE managerscopy 
SET lgid = '--'; 

#update by joining to another table 
USE lahmansbaseballdb;
UPDATE managerscopy mc
INNER JOIN managers m 
ON m.playerid = mc.playerid 
AND mc.teamid = m.teamid 
AND mc.yearid = m.yearid
SET mc.lgid = m.lgid