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

CALL getplayergameinfo();


/* create stored procedure in sql server */
CREATE PROCEDURE getplayergameinfo      
AS   
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
         

/*call stored proc in sql server */
EXEC getplayergameinfo; 

/* create stored procedure in oracle */
CREATE OR REPLACE PROCEDURE getplayergameinfo(data OUT varchar2)
IS
BEGIN
 SELECT p.playerid
 INTO data
 FROM appearances a
 JOIN people p ON p.playerid = a.playerid
 JOIN batting b ON a.playerid = b.playerid
 AND a.yearid = b.yearid  
 AND a.teamid = b.teamid
 WHERE b.yearid = 2017 AND H <> 0
 FETCH FIRST 1 ROWS ONLY; 
END; 

/*call a stored proc in oracle */

DECLARE
  results VARCHAR2(4000);         
BEGIN                        
  getplayergameinfo(results);     
  DBMS_OUTPUT.PUT_LINE(results); 
END; 


DROP PROCEDURE getplayergameinfo;