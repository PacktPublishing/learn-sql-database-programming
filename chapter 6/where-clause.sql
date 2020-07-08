#where clause 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all > 40;

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

#in example 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all IN (40, 50, 60);

#between example 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all BETWEEN 40 and 60; 

#not between example 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all NOT BETWEEN 40 and 60; 

#not in example 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all NOT IN (40, 50, 60); 

#not in and not between example 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all NOT IN (40, 50, 60)
AND g_batting NOT BETWEEN 30 and 40;

#not in or not between example 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
WHERE g_all NOT IN (40, 50, 60)
OR g_batting NOT BETWEEN 30 and 40;

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
