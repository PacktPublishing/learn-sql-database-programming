#explain multi table select 
EXPLAIN SELECT p.playerid, p.birthyear,
     a.yearid, a.teamid, a.G_defense, b.H
FROM lahmansbaseballdb.appearances AS a
INNER JOIN lahmansbaseballdb.people AS p
ON p.playerid = a.playerid
INNER JOIN lahmansbaseballdb.batting AS b
ON p.playerid = b.playerid
WHERE b.yearid = 2017
AND b.H <> 0
ORDER BY p.playerid, a.yearid, a.teamid, a.G_defense, b.H;

#add people table nonclustered index 
ALTER TABLE lahmansbaseballdb.people 
ADD INDEX `NC_playerid_birthyear` (playerID ASC, birthYear ASC) VISIBLE;

#add appearances table nonclustered index 
ALTER TABLE lahmansbaseballdb.appearances 
ADD INDEX `NC_playerid_yearid_teamid_G_defense` (playerID ASC, yearID ASC, teamID ASC, G_defense ASC) VISIBLE;

#add batting table nonclustered index 
ALTER TABLE lahmansbaseballdb.batting
ADD INDEX `NC_playerid_yearid_H` (playerID ASC, yearID ASC, H ASC) VISIBLE;





