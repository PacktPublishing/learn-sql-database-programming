# create empty temporary table 
USE lahmansbaseballdb; 
 CREATE TEMPORARY TABLE tempplayerinfo
 SELECT p.playerid, birthyear,
 a.yearid, a.teamid,
 G_defense AS defensegames,
 H AS numberofhits
 FROM lahmansbaseballdb.appearances AS a
 JOIN lahmansbaseballdb.people AS p
 ON p.playerid = a.playerid
 JOIN lahmansbaseballdb.batting AS b
 ON a.playerid = b.playerid
 AND a.yearid = b.yearid
 AND a.teamid = b.teamid
 WHERE b.yearid = 2017
 AND H <> 0
 ORDER BY p.playerid, a.yearid, 
        a.teamid, G_defense, H
 LIMIT 0;
 
# describe temp table columns 
USE lahmansbaseballdb; 
DESCRIBE tempplayerinfo;

# select from temp table 
USE lahmansbaseballdb;
SELECT * FROM tempplayerinfo;

# delete temp table 
USE lahmansbaseballdb; 
DROP TEMPORARY TABLE tempplayerinfo;
