#union 
SELECT am.playerid, namegiven, awardid, yearid FROM lahmansbaseballdb.awardsmanagers am
INNER JOIN lahmansbaseballdb.people p 
ON p.playerid = am.playerid 
WHERE yearid = 1994 
UNION 
SELECT ap.playerid, namegiven, awardid, yearid FROM lahmansbaseballdb.awardsplayers ap
INNER JOIN lahmansbaseballdb.people p 
ON p.playerid = ap.playerid 
WHERE yearid = 1994
ORDER BY awardid; 

#union with static column 
SELECT am.playerid, namegiven, awardid, yearid, "Manager" as playeridType 
FROM lahmansbaseballdb.awardsmanagers am
INNER JOIN lahmansbaseballdb.people p 
ON p.playerid = am.playerid 
WHERE yearid = 1994 
UNION 
SELECT ap.playerid, namegiven, awardid, yearid, "Player" 
FROM lahmansbaseballdb.awardsplayers ap
INNER JOIN lahmansbaseballdb.people p 
ON p.playerid = ap.playerid 
WHERE yearid = 1994
ORDER BY awardid;

#union all 
SELECT playerid, yearid, teamid, G AS gamesbatted FROM lahmansbaseballdb.batting
WHERE yearid = 2005
UNION ALL 
SELECT playerid, yearid, teamid, g_batting FROM lahmansbaseballdb.appearances 
WHERE yearid = 2005 
ORDER BY yearid, playerid, gamesbatted;

#intersect in mysql 
SELECT DISTINCT a.playerid
FROM lahmansbaseballdb.batting b
INNER JOIN lahmansbaseballdb.appearances a
ON a.playerid = b.playerid
ORDER BY a.playerid;

#intersect in oracle, postgresql, and sql server 
USE lahmansbaseballdb
SELECT playerid
FROM batting 
INTERSECT 
SELECT playerid
FROM appearances
ORDER BY playerid;

#except/minus in mysql 
SELECT p.playerid
FROM lahmansbaseballdb.allstarfull asf
RIGHT OUTER JOIN lahmansbaseballdb.people p 
ON p.playerid = asf.playerid
WHERE asf.playerid IS NULL; 

#except in postgresql and sql server
USE lahmansbaseballdb
SELECT playerid
FROM people
EXCEPT
SELECT playerid
FROM allstarfull;

#minus in oracle
USE lahmansbaseballdb
SELECT playerid
FROM people
MINUS
SELECT playerid 
FROM allstarfull;









