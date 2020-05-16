#select all columns from table 
SELECT * FROM lahmansbaseballdb.appearances;

#select single column from table 
SELECT playerid FROM lahmansbaseballdb.appearances;

#select multiple columns from table 
SELECT playerid, g_all, g_batting, g_defense FROM lahmansbaseballdb.appearances;

#select one column that is distinct 
USE lahmansbaseballdb;
SELECT distinct playerid FROM appearances;

#select multiple columns that are distinct 
USE lahmansbaseballdb;
SELECT DISTINCT teamid, playerid from appearances;

#column alias
SELECT playerid, 
	   G_defense AS GamesPlayingDefense
FROM lahmansbaseballdb.appearances; 

#column alias with space 
SELECT playerid, 
	   G_defense AS 'Games Playing Defense'
FROM lahmansbaseballdb.appearances; 


#limit and offset
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