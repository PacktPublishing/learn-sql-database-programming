# create copy of parks table 
USE lahmansbaseballdb;
CREATE TABLE parks_copy AS
SELECT * FROM parks

CREATE VIEW parksalias AS
SELECT parkalias, parkkey, parkname, 
       city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL; 


INSERT INTO parksalias
VALUES (NULL, 
 'TST01', 
 'testing park name', 
 'Seattle', 
 'WA', 
 'US');
 

ALTER TABLE parks_copy
CHANGE COLUMN ID ID SMALLINT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (ID);

#inserting into a view with multiple tables 
USE lahmansbaseballdb;
DROP TABLE IF EXISTS collegeplaying_copy; 
CREATE TABLE collegeplaying_copy
SELECT * FROM collegeplaying; 

USE lahmansbaseballdb;
DROP VIEW IF EXISTS collegeplayingbyname; 
CREATE VIEW collegeplayingbyname AS 
SELECT namefirst, namelast, schoolid, yearid 
FROM collegeplaying_copy c
INNER JOIN people p 
ON p.playerid = c.playerid; 

USE lahmansbaseballdb;
SELECT * FROM collegeplayingbyname; 

#gives error 
USE lahmansbaseballdb;
INSERT INTO collegeplayingbyname (namefirst, namelast, schoolid, yearid)
VALUES ('David', 'Aardsma', 'rice', 2004);


USE lahmansbaseballdb;
DROP VIEW IF EXISTS collegeplayingbyname;
CREATE VIEW collegeplayingbyname AS
SELECT c.playerid, namefirst, namelast, schoolid, yearid
FROM collegeplaying_copy c
INNER JOIN people_copy p
ON p.playerid = c.playerid;

USE lahmansbaseballdb;
SELECT * FROM collegeplayingbyname; 

INSERT INTO collegeplayingbyname (playerid, schoolid, yearid)
VALUES ('aardsda01', 'rice', 2004); 

USE lahmansbaseballdb; 
SELECT * FROM collegeplayingbyname
WHERE playerid = 'aardsda01'; 










 