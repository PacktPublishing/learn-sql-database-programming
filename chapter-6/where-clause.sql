#where clause 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all > 40;

