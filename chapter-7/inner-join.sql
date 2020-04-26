#inner join 
SELECT lahmansbaseballdb.people.playerid, birthyear, yearid, teamid
FROM lahmansbaseballdb.appearances
INNER JOIN lahmansbaseballdb.people
ON lahmansbaseballdb.people.playerid = lahmansbaseballdb.appearances.playerid
WHERE yearid = 2017; 

#inner join not using inner keyword 
SELECT lahmansbaseballdb.people.playerid, birthyear, yearid, teamid 
FROM lahmansbaseballdb.appearances
JOIN lahmansbaseballdb.people
ON lahmansbaseballdb.people.playerid = lahmansbaseballdb.appearances.playerid
WHERE yearid = 2017; 

#inner join three tables 
SELECT lahmansbaseballdb.people.playerid, birthyear, lahmansbaseballdb.appearances.yearid, 
 lahmansbaseballdb.appearances.teamid, G_defense, H 
FROM lahmansbaseballdb.appearances
INNER JOIN lahmansbaseballdb.people
ON lahmansbaseballdb.people.playerid = lahmansbaseballdb.appearances.playerid
INNER JOIN lahmansbaseballdb.batting
ON lahmansbaseballdb.people.playerid = lahmansbaseballdb.batting.playerid
WHERE lahmansbaseballdb.batting.yearid = 2017 
AND H <> 0
ORDER BY lahmansbaseballdb.people.playerid, lahmansbaseballdb.appearances.yearid, 
 lahmansbaseballdb.appearances.teamid, G_defense, H; 

#table alias
SELECT p.playerid, birthyear, 
 a.yearid, a.teamid, G_defense, H 
FROM lahmansbaseballdb.appearances AS a
INNER JOIN lahmansbaseballdb.people AS p
ON p.playerid = a.playerid
INNER JOIN lahmansbaseballdb.batting AS b
ON p.playerid = b.playerid
WHERE b.yearid = 2017 
AND H <> 0
ORDER BY p.playerid, a.yearid, a.teamid, G_defense, H;




 




