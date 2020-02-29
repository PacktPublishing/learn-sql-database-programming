USE lahmansbaseballdb;
CREATE TABLE allstarfull_copy
SELECT * FROM allstarfull;

USE lahmansbaseballdb; 
 CREATE TABLE allstarfull_audit (
 id INT AUTO_INCREMENT PRIMARY KEY,
 playerID varchar(9) NOT NULL,
 yearID smallint(6) NOT NULL,
 gameNum smallint(6) NOT NULL,
 gameID varchar(12) NULL,
 teamID varchar(3) NULL,
 lgID varchar(2) NULL,
 GP smallint(6) NULL,
 startingPos smallint(6) NULL,
 changedate DATETIME NOT NULL,
 actiontype VARCHAR(50) NOT NULL);
 
 # one statement in a trigger 
 USE lahmansbaseballdb;
 CREATE TRIGGER before_allstar_update
 BEFORE UPDATE ON allstarfull_copy
 FOR EACH ROW
 INSERT INTO allstarfull_audit
 SET actiontype = 'update',
 playerid = OLD.playerid,
 yearid = OLD.yearid,
 gamenum = OLD.gamenum,
 gameid = OLD.gameid,
 teamid = OLD.teamid,
 lgid = OLD.lgid,
 gp = OLD.gp,
 startingpos = OLD.startingpos,
 changedate = NOW();
 
 USE lahmansbaseballdb;
 UPDATE allstarfull_copy
 SET
 yearID = 2015,
 gameNum = 1,
 gameID = 'NLS201507170',
 teamID = 'CHI',
 lgID = 'AL',
 GP = 1,
 startingPos = 9
 WHERE playerid = 'arrieja01';
 
 USE lahmansbaseballdb;
 SELECT * FROM allstarfull_copy
 WHERE playerid = 'arrieja01';
 
 USE lahmansbaseballdb; 
 SELECT * FROM allstarfull_audit;
 
 # multiple statements in one trigger 
 DELIMITER $$
 
CREATE TRIGGER before_allstar_update 
 BEFORE UPDATE ON allstarfull_copy 
 FOR EACH ROW 
BEGIN
 IF OLD.playerid <> NEW.playerid THEN
 INSERT INTO allstarfull_audit
 SET actiontype = 'update',
 playerid = OLD.playerid,
 yearid = OLD.yearid,
 gamenum = OLD.gamenum, 
 gameid = OLD.gameid, 
 teamid = OLD.teamid, 
 lgid = OLD.lgid, 
 gp = OLD.gp, 
 startingpos = OLD.startingpos,
 changedate = NOW();
 END IF;
END$$
DELIMITER ;

# multiple triggers on one table 
USE lahmansbaseballdb;
 CREATE TRIGGER before_allstar_update2
 BEFORE UPDATE ON allstarfull_copy
 FOR EACH ROW
 FOLLOWS before_allstar_update
 INSERT INTO allstarfull_audit
 SET actiontype = 'update',
 playerid = OLD.playerid,
 yearid = OLD.yearid,
 gamenum = OLD.gamenum,
 gameid = OLD.gameid,
 teamid = OLD.teamid,
 lgid = OLD.lgid,
 gp = OLD.gp,
 startingpos = OLD.startingpos,
 changedate = NOW();

# deleting a trigger 
USE lahmansbaseballdb; 
DROP TRIGGER before_allstar_update;


 
 
 
 
 
 
 