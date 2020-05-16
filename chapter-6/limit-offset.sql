USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
LIMIT 500;

/* in oracle */
SELECT playerid, g_all, g_batting, g_defense FROM appearances
OFFSET 0 ROWS FETCH NEXT 500 ROWS ONLY;

/* in sql server */
SELECT TOP 500 playerid, g_all, g_batting, g_defense 
FROM appearances; 

SELECT playerid, g_all, g_batting, g_defense FROM appearances
ORDER BY playerid
OFFSET 0 ROWS 
FETCH NEXT 500 ROWS ONLY;


USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances
LIMIT 500 OFFSET 1000; 


/* in oracle */
SELECT playerid, g_all, g_batting, g_defense FROM appearances
OFFSET 1000 ROWS FETCH NEXT 500 ROWS ONLY;


/* in sql server */
SELECT playerid, g_all, g_batting, g_defense FROM appearances
ORDER BY playerid
OFFSET 500 ROWS 
FETCH NEXT 1000 ROWS ONLY;