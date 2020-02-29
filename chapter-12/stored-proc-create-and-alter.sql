USE lahmansbaseballdb;
DELIMITER $$
CREATE PROCEDURE getplayergameinfo()
BEGIN
 SELECT p.playerid, birthyear, a.yearid,
        a.teamid, G_defense AS defensegames, 
        H AS numberofhits
 FROM appearances AS a
 JOIN people AS p ON p.playerid = a.playerid
 JOIN batting AS b ON a.playerid = b.playerid
 AND a.yearid = b.yearid  
 AND a.teamid = b.teamid
 WHERE b.yearid = 2017 AND H <> 0
 ORDER BY p.playerid, a.yearid, a.teamid,
          G_defense, H;
END $$
DELIMITER ;

USE lahmansbaseballdb;
CALL getplayergameinfo();

DROP PROCEDURE getplayergameinfo;