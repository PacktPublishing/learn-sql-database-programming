#orders results by g_all ascending 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
ORDER BY g_all; 

#orders results by g_all ascending and filters on playerid starting with "a" 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE 'a%'
ORDER BY g_all; 

#orders results by g_all descending
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
ORDER BY g_all DESC; 

#orders results by playerid ascending then g_all ascending 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
ORDER BY playerid, g_all; 

#orders results by playerid descending then g_all descending 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
ORDER BY playerid DESC, g_all DESC; 

#orders results by playerid descending then g_all descending using column position numbers  
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
ORDER BY 1 DESC, 2 DESC; 