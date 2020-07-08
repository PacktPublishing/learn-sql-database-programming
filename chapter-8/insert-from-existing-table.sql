#the following query creates a new table and inserts all the rows from an existing table 
USE lahmansbaseballdb;
CREATE TABLE managerscopy 
SELECT * FROM managers;

#with oracle, postgresql, and sql server create new table and populate with data from existing table
SELECT * INTO managerscopy
FROM managers;


#with oracle, postgresql, and sql server create new table and populate with data from existing table
SELECT playerid, yearid, teamid, G 
INTO managerscopy
FROM managers; 


#the following query creates a new table and inserts only some of the rows from an existing table 
USE lahmansbaseballdb;
CREATE TABLE managers_plyrmgr 
SELECT * FROM managers
WHERE plyrMgr = 'Y';

#the following query creates a blank table that matches the schema of an existing table 
USE lahmansbaseballdb;
CREATE TABLE managerscopy 
SELECT * FROM managers
WHERE 1=0; 

#with oracle, postgresql, and sql server create new table schema only
SELECT * INTO managerscopy
FROM managers
WHERE 1 = 0; 

#the following query creates a blank table and populates it from two existing tables 
USE lahmansbaseballdb;
CREATE TABLE awards 
SELECT am.playerid, namegiven, awardid, yearid, "Manager" as playertype 
FROM awardsmanagers am
INNER JOIN people p 
ON p.playerid = am.playerid 
UNION 
SELECT ap.playerid, namegiven, awardid, yearid, "Player" 
FROM awardsplayers ap
INNER JOIN people p 
ON p.playerid = ap.playerid 
ORDER BY awardid;

#create new table and insert existing table data 
USE yourschema;
CREATE TABLE allstarfull (
 playerID varchar(9) NOT NULL,
 yearID smallint(6) NOT NULL,
 gameNum smallint(6) NOT NULL,
 gameID varchar(12) NULL,
 teamID varchar(3) NULL,
 lgID varchar(2) NULL,
 GP smallint(6) NULL,
 startingPos smallint(6) NULL
);

INSERT INTO yourschema.allstarfull 
SELECT * FROM lahmansbaseballdb.allstarfull
WHERE gameid LIKE 'NLS%'

#create new table and insert existing table data for sql server, postgresql  
USE yourschema;
CREATE TABLE allstarfull (
 playerID varchar(9) NOT NULL,
 yearID smallint NOT NULL,
 gameNum smallint NOT NULL,
 gameID varchar(12) NULL,
 teamID varchar(3) NULL,
 lgID varchar(2) NULL,
 GP smallint NULL,
 startingPos smallint NULL
);

INSERT INTO yourschema.dbo.allstarfull 
SELECT * FROM lahmansbaseballdb.dbo.allstarfull
WHERE gameid LIKE 'NLS%'



