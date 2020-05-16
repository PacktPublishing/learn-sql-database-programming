#returns null values for g_defense
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense
FROM appearances
WHERE g_defense IS NULL;
 
#returns not null values for g_defense 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense
FROM appearances
WHERE g_defense IS NOT NULL;