#the following query inserts three rows 
USE lahmansbaseballdb;
INSERT INTO collegeplaying
(playerID, schoolID, yearID)
VALUES ('blaloha01','sandiegost',2000),
       ('blaloha01','sandiegost',2001),
       ('blaloha01','sandiegost',2002);
       
#in oracle you need to use a different syntax as shown below 
INSERT ALL
INTO collegeplaying(playerid, schoolid, yearid) VALUES('blaloha01','sandiegost',2000)
INTO collegeplaying(playerid, schoolid, yearid) VALUES('blaloha01','sandiegost',2001)
INTO collegeplaying(playerid, schoolid, yearid) VALUES('blaloha01','sandiegost',2002)
SELECT * FROM DUAL;