USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
LIMIT 500;

USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
LIMIT 500 OFFSET 1000; 