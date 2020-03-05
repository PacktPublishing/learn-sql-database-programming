USE lahmansbaseballdb;
DROP PROCEDURE IF EXISTS getplayergameinfo; 

# IN parameter 
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
 WHERE b.yearid = yearid_in AND h > hits_in
 ORDER BY p.playerid, a.yearid, 
          a.teamid, G_defense, H;
 END $$
 DELIMITER ;
 

CALL getplayergameinfo(2016, 0);

/*create and use stored proc in sql server with IN parameters */
CREATE or ALTER PROCEDURE getplayergameinfo   
	@yearid_in smallint,   
    @hits_in smallint   
AS   
SELECT p.playerid, birthyear, a.yearid,
        a.teamid, G_defense AS defensegames, 
        H AS numberofhits
 FROM appearances AS a
 JOIN people AS p ON p.playerid = a.playerid
 JOIN batting AS b ON a.playerid = b.playerid
 AND a.yearid = b.yearid  
 AND a.teamid = b.teamid
 WHERE b.yearid = @yearid_in AND H > @hits_in
 ORDER BY p.playerid, a.yearid, a.teamid,
          G_defense, H;
 
EXEC getplayergameinfo @yearid_in = 2017, @hits_in = 0;


# OUT parameter 
DROP PROCEDURE IF EXISTS getplayergameinfo;


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


CALL getplayergameinfo(2015, 10, @countplayers);
SELECT @countplayers;

/*create and use stored proc in sql server with OUT parameters */
CREATE or ALTER PROCEDURE getplayergameinfo   
	@yearid_in smallint,   
    @hits_in smallint, 
    @countplayers smallint OUT
AS   
SELECT COUNT(p.playerid)
 FROM appearances AS a
 JOIN people AS p ON p.playerid = a.playerid
 JOIN batting AS b ON a.playerid = b.playerid
 AND a.yearid = b.yearid  
 AND a.teamid = b.teamid
 WHERE b.yearid = @yearid_in AND H > @hits_in; 
 

DECLARE @countplayers smallint
EXEC getplayergameinfo @yearid_in = 2017, @hits_in = 0, @countplayers = @countplayers OUT;
SELECT @countplayers; 

