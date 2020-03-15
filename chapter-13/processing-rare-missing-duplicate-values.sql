#fixing rare/outlier values 
USE lahmansbaseballdb; 
SELECT DISTINCT h as hits, COUNT(h) as count
FROM batting
GROUP BY hits
ORDER BY count;

USE lahmansbaseballdb; 
SELECT b.playerid, namefirst, namelast, 
        yearid, teamid, g, ab, h 
FROM batting b
INNER JOIN people p 
ON p.playerid = b.playerid
WHERE h = 248;

USE lahmansbaseballdb; 
UPDATE batting 
SET h = whatevernumberiscorrect 
WHERE playerid = 'cobbty01'
AND yearid = 1911
AND teamid = 'DET'; 

# fixing missing values 
USE lahmansbaseballdb; 
SELECT 
SUM(!ISNULL(birthyear)) AS birthyear_count,
SUM(ISNULL(birthyear)) AS null_birthyear_count
FROM people;

USE lahmansbaseballdb; 
SELECT playerid, namefirst, namelast, debut 
FROM people 
WHERE birthyear is NULL; 

USE lahmansbaseballdb;
UPDATE people
SET birthyear = whateverbirthyeariscorrect
WHERE playerid = 'barre01';

# fixing duplicate values 
USE lahmansbaseballdb;
SELECT name_full
FROM schools
GROUP BY name_full
HAVING count(*) >= 2;

USE lahmansbaseballdb;
SELECT * FROM schools
WHERE name_full = 'Bethel College'; 

USE lahmansbaseballdb; 
SELECT * FROM schools
WHERE name_full = '"California Polytechnic State University'; 

USE lahmansbaseballdb; 
UPDATE schools
SET name_full = 'California Polytechnic State University', 
 city = 'San Luis Obispo', 
 state = 'CA', 
 country = 'USA'
WHERE schoolid = 'calpoly'; 


