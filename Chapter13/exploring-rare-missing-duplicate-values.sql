USE lahmansbaseballdb; 
SELECT DISTINCT h as hits, COUNT(h) as count
FROM batting
GROUP BY hits
ORDER BY count;

USE lahmansbaseballdb; 
SELECT 
SUM(!ISNULL(h)) AS hits_count,
SUM(ISNULL(h)) AS null_hits_count
FROM batting;

USE lahmansbaseballdb; 
SELECT 
SUM(!ISNULL(ibb)) AS ibb_count,
SUM(ISNULL(ibb)) AS null_ibb_count
FROM batting; 

USE lahmansbaseballdb; 
SELECT MIN(yearid) as minyear, 
MAX(yearid) as maxyear 
FROM batting
WHERE ibb IS NULL;

USE lahmansbaseballdb;
SELECT name_full
FROM schools
GROUP BY name_full
HAVING count(*) >= 2;

USE lahmansbaseballdb;
SELECT * FROM schools
WHERE name_full = 'Bethel College'; 

USE lahmansbaseballdb; 
SELECT name_full, city
FROM schools
GROUP BY name_full, city
HAVING count(*) >= 2;

USE lahmansbaseballdb; 
SELECT * FROM schools
WHERE name_full = '"California Polytechnic State University';


