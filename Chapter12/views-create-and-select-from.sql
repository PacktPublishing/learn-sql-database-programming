USE lahmansbaseballdb; 
CREATE VIEW playergameinfo AS
SELECT p.playerid, birthyear, 
        a.yearid, a.teamid, 
        G_defense AS defensegames, 
        H AS numberofhits
FROM appearances AS a  		/*remove AS for oracle */
JOIN people AS p   			/*remove AS for oracle */
ON p.playerid = a.playerid
JOIN batting AS b 			/*remove AS for oracle */
ON a.playerid = b.playerid
AND a.yearid = b.yearid 
AND a.teamid = b.teamid
WHERE b.yearid = 2017 
AND H <> 0;


SELECT * FROM playergameinfo;


SELECT playerid, birthyear, yearid, teamid, defensegames 
FROM playergameinfo
WHERE teamid = 'CHA' 
ORDER BY defensegames DESC; 