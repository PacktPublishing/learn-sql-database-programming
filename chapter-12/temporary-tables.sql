# create empty temporary table 
USE lahmansbaseballdb; 
 CREATE TEMPORARY TABLE tempplayerinfo /*with postgres and oracle use AS after table name and with oracle use GLOBAL before TEMPORARY */
 SELECT p.playerid, birthyear,
 a.yearid, a.teamid,
 G_defense AS defensegames,
 H AS numberofhits
 FROM appearances AS a /* remove AS for oracle */
 JOIN people AS p /* remove AS for oracle */
 ON p.playerid = a.playerid
 JOIN batting AS b  /* remove AS for oracle */
 ON a.playerid = b.playerid
 AND a.yearid = b.yearid
 AND a.teamid = b.teamid
 WHERE b.yearid = 2017
 AND H <> 0
 LIMIT 0;  /* remove for oracle */


/* to create a temp table in sql server */
SELECT TOP 0 p.playerid, birthyear,
 a.yearid, a.teamid,
 G_defense AS defensegames,
 H AS numberofhits
 INTO #tempplayerinfo
 FROM appearances AS a
 JOIN people AS p
 ON p.playerid = a.playerid
 JOIN batting AS b
 ON a.playerid = b.playerid
 AND a.yearid = b.yearid
 AND a.teamid = b.teamid
 WHERE b.yearid = 2017
 AND H <> 0
 ORDER BY p.playerid, a.yearid, 
        a.teamid, G_defense, H;  


 
# describe temp table columns 
DESCRIBE tempplayerinfo;

# select from temp table 
SELECT * FROM tempplayerinfo; 

/* query temp table in sql server */
SELECT * FROM #tempplayerinfo; 

# delete temp table  
DROP TEMPORARY TABLE tempplayerinfo;

/* drop temp table in sql server */
DROP TABLE #tempplayerinfo;

/* drop temp table in postgresql and oracle */
DROP TABLE tempplayerinfo;
