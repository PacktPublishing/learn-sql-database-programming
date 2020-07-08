# create copy of parks table 
USE lahmansbaseballdb;
CREATE TABLE parks_copy AS
SELECT * FROM parks

CREATE VIEW parksalias AS
SELECT parkalias, parkkey, parkname, 
       city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL
WITH CHECK OPTION;

SELECT * FROM parksalias;

UPDATE parksalias
SET parkalias = NULL
WHERE parkkey = 'ANA01';

#update view with multiple tables 
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

USE lahmansbaseballdb;
UPDATE collegeplayingbyname 
SET schoolid = 'testing', yearid = 2004
WHERE (namefirst = 'David' and namelast = 'Aardsma') 
and (schoolid = 'rice' and yearid = 2003); 

USE lahmansbaseballdb;
SELECT * FROM collegeplayingbyname; 

USE lahmansbaseballdb;
DROP TABLE IF EXISTS people_copy; 
CREATE TABLE people_copy
SELECT * FROM people;

USE lahmansbaseballdb; 
DROP VIEW IF EXISTS collegeplayingbyname; 
CREATE VIEW collegeplayingbyname AS 
SELECT namefirst, namelast, schoolid, yearid 
FROM collegeplaying_copy c
INNER JOIN people_copy p 
ON p.playerid = c.playerid;

USE lahmansbaseballdb; 
UPDATE collegeplayingbyname 
SET schoolid = 'testing', yearid = 2004
WHERE (namefirst = 'David' and namelast = 'Aardsma') 
and (schoolid = 'rice' and yearid = 2003);

USE lahmansbaseballdb; 
UPDATE collegeplayingbyname 
SET namefirst = 'Peter'
WHERE (namefirst = 'David' and namelast = 'Aardsma') 
and (schoolid = 'rice' and yearid = 2003);

 





 