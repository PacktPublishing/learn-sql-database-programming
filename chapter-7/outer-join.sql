#left outer join
SELECT p.playerid, birthyear, schoolid, yearid 
FROM lahmansbaseballdb.people p 
LEFT OUTER JOIN lahmansbaseballdb.collegeplaying c 
ON p.playerid = c.playerid 
WHERE birthyear = 1985;

#using left outer join without outer which will produce the same results
SELECT p.playerid, birthyear, schoolid, yearid 
FROM lahmansbaseballdb.people p 
LEFT JOIN lahmansbaseballdb.collegeplaying c 
ON p.playerid = c.playerid 
WHERE birthyear = 1985;

#left outer joining three tables 
SELECT p.playerid, birthyear, schoolid, asf.yearid, gameid
FROM lahmansbaseballdb.people p 
LEFT OUTER JOIN lahmansbaseballdb.collegeplaying c 
ON p.playerid = c.playerid 
LEFT OUTER JOIN lahmansbaseballdb.allstarfull asf
ON asf.playerid = p.playerid
WHERE birthyear = 1985;

#left excluding join 
SELECT p.playerid, birthyear, schoolid, yearid 
FROM lahmansbaseballdb.people p 
LEFT OUTER JOIN lahmansbaseballdb.collegeplaying c 
ON p.playerid = c.playerid 
WHERE birthyear = 1985 
AND c.playerid IS NULL; 

#right outer join 
SELECT p.playerid, asf.yearid, gameid, startingpos 
FROM lahmansbaseballdb.allstarfull asf
RIGHT OUTER JOIN lahmansbaseballdb.people p 
ON p.playerid = asf.playerid; 

#using left outer join without outer which will produce the same results
SELECT p.playerid, asf.yearid, gameid, startingpos 
FROM lahmansbaseballdb.allstarfull asf
RIGHT JOIN lahmansbaseballdb.people p 
ON p.playerid = asf.playerid; 

#right outer joining three tables 
SELECT m.playerid, m.yearid, h.votedBy, s.salary
FROM lahmansbaseballdb.managers m
RIGHT OUTER JOIN lahmansbaseballdb.halloffame h
ON m.playerid = h.playerid 
RIGHT OUTER JOIN lahmansbaseballdb.salaries s 
ON m.playerid = s.playerid;

#right excluding join 
SELECT p.playerid, asf.yearid, gameid, startingpos 
FROM lahmansbaseballdb.allstarfull asf
RIGHT OUTER JOIN lahmansbaseballdb.people p 
ON p.playerid = asf.playerid
WHERE asf.playerid IS NULL; 

#full outer join in oracle, postgres, and sql server only 
USE lahmansbaseballdb;
SELECT p.playerid, asf.yearid, gameid, startingpos 
FROM allstarfull asf
FULL OUTER JOIN people p 
ON p.playerid = asf.playerid;









