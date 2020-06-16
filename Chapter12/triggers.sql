USE lahmansbaseballdb;
CREATE TABLE allstarfull_copy
SELECT * FROM allstarfull;


CREATE TABLE allstarfull_audit (
playerID varchar(9) NOT NULL,
yearID smallint NOT NULL,
gameNum smallint NOT NULL,
gameID varchar(12) NULL,
teamID varchar(3) NULL,
lgID varchar(2) NULL,
GP smallint NULL,
startingPos smallint NULL,
changedate DATETIME NOT NULL, /*timestamp in postgres */
actiontype VARCHAR(50) NOT NULL);
 
# one statement in a trigger 
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


 /* use this to create a trigger in SQL Server */
CREATE TRIGGER after_allstar_update
ON allstarfull_copy
AFTER UPDATE
AS
BEGIN
    --SET NOCOUNT ON;
    INSERT INTO allstarfull_audit(
        playerid, 
        yearid,
        gamenum,
        gameid,
        teamid,
        lgid, 
        gp,
        startingpos,
        changedate, 
        actiontype
    )
    SELECT
        playerid, 
        yearid,
        gamenum,
        gameid,
        teamid,
        lgid, 
        gp,
        startingpos,
        GETDATE(),
        'update'
    FROM
        inserted i
    UNION ALL
    SELECT
        playerid, 
        yearid,
        gamenum,
        gameid,
        teamid,
        lgid, 
        gp,
        startingpos,
        GETDATE(),
        'delete'
    FROM
        deleted d;
END
 

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
 

SELECT * FROM allstarfull_copy
WHERE playerid = 'arrieja01';
 
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

DROP TRIGGER before_allstar_update;


 
 
 
 
 
 
 