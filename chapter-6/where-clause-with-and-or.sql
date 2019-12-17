#where clause with AND
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all > 40 
AND g_all <> g_batting; 

#where clause with OR
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all > 40 
OR g_defense > 30;

#where clause with AND and OR
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE (g_all > 40 AND g_defense <  30) 
OR g_all > 60;