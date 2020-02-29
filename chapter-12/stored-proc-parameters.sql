USE lahmansbaseballdb;
DROP PROCEDURE IF EXISTS getplayergameinfo; 

# IN parameter 
USE lahmansbaseballdb;
 DELIMITER $$
 CREATE PROCEDURE getplayergameinfo
 (
 IN yearid_in year,
 IN hits_in smallint
 )
 BEGIN
 SELECT p.playerid, birthyear, a.yearid,
        a.teamid,G_defense AS defensegames,
        H AS numberofhits
 FROM appearances AS a
 JOIN people AS p ON p.playerid = a.playerid
 JOIN batting AS b ON a.playerid = b.playerid
 AND a.yearid = b.yearid 
 AND a.teamid = b.teamid
 WHERE b.yearid = yearid_in AND h > h_in
 ORDER BY p.playerid, a.yearid, 
          a.teamid, G_defense, H;
 END $$
 DELIMITER ;
 
USE lahmansbaseballdb; 
CALL getplayergameinfo(2016, 0);

# OUT parameter 
USE lahmansbaseballdb;
DROP PROCEDURE IF EXISTS getplayergameinfo;

USE lahmansbaseballdb;
DELIMITER $$
CREATE PROCEDURE getplayergameinfo
(
IN yearid_in year,
IN h_in smallint, 
OUT countplayers smallint
)
BEGIN
 SELECT COUNT(p.playerid)
 INTO countplayers
 FROM appearances AS a
 JOIN people AS p ON p.playerid = a.playerid
 JOIN batting AS b ON a.playerid = b.playerid
 AND a.yearid = b.yearid 
 AND a.teamid = b.teamid
 WHERE b.yearid = yearid_in AND h > h_in
 ORDER BY p.playerid, a.yearid, a.teamid, G_defense, H;
END $$
DELIMITER ;

USE lahmansbaseballdb; 
CALL getplayergameinfo(2015, 10, @countplayers);
SELECT @countplayers;



