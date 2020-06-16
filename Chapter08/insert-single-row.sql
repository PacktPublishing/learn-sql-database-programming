#the following queries inserts one row 
USE lahmansbaseballdb;
INSERT INTO collegeplaying
 (playerID,
 schoolID,
 yearID)
 VALUES
 ('blaloha01',
'sandiegost',
 1999);
 
USE lahmansbaseballdb;
INSERT INTO collegeplaying
(playerID, schoolID, yearID)
VALUES ('blaloha01','sandiegost',1999);

USE lahmansbaseballdb;
INSERT INTO collegeplaying
VALUES ('blaloha01','sandiegost',1999);

#the following query inserts one row and only 2 columns 
USE lahmansbaseballdb;
INSERT INTO collegeplaying
(playerID, yearID)
VALUES ('blaloha01', 1999);

#the following query causes an error
USE lahmansbaseballdb;
INSERT INTO collegeplaying
VALUES ('blaloha01', 1999);

#the following query causes an error 
USE lahmansbaseballdb;
INSERT INTO collegeplaying
VALUES('blaloha01',1999, 'sandiegost');

#the following query causes an implicit conversion
USE lahmansbaseballdb;
INSERT INTO collegeplaying
(playerID,schoolid)
VALUES ('blaloha01', 1999);


 