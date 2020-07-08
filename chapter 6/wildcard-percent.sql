#finds all playerids that start with the letter "a"
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE 'a%'; 

#finds all playerids that end with the letter "a"
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE '%a'; 

#finds all playerids that contain "a" 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE '%a%';

#finds all playerids that start with the letters "wr"
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE 'wr%';

#finds all playerids that contain "ds" 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE '%ds%';