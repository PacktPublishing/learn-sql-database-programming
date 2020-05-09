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

DELETE from parksalias 
WHERE parkkey = 'ALB01'; 

DELETE from parksalias 
WHERE parkkey = 'TST01'; 

#delete from view with multiple tables 
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

#gives error. you can't delete from view with multiple tables 
USE lahmansbaseballdb;
DELETE FROM collegeplayingbyname 
WHERE (namefirst = 'David' AND namelast = 'Aardsma')
     AND (schoolid = 'rice' AND yearid = 2003); 





 