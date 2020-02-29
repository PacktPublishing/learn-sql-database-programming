USE lahmansbaseballdb; 
CREATE VIEW playergameinfo AS
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
ORDER BY p.playerid, a.yearid, a.teamid, G_defense, H;

USE lahmansbaseballdb; 
SELECT * FROM playergameinfo;

USE lahmansbaseballdb; 
SELECT playerid, birthyear, yearid, teamid, defensegames 
FROM playergameinfo
WHERE teamid = 'CHA' 
ORDER BY defensegames DESC; 