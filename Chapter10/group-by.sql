USE lahmansbaseballdb;
SELECT playerid, teamid 
FROM batting
GROUP BY teamid;

USE lahmansbaseballdb;
SELECT playerid, teamid 
FROM batting
GROUP BY teamid, playerid;

USE lahmansbaseballdb;
SELECT playerid, teamid 
FROM batting
WHERE playerid = 'aardsda01'
GROUP BY teamid, playerid;

USE lahmansbaseballdb;
SELECT playerid, teamid
FROM batting
WHERE playerid = 'aardsda01';

USE lahmansbaseballdb;
SELECT playerid, teamid, yearid
FROM batting
WHERE playerid = 'aardsda01'; 

USE lahmansbaseballdb; 
SELECT playerid, teamid
FROM batting
WHERE playerid = 'aardsda01'
GROUP BY teamid, playerid 
ORDER BY playerid, teamid;

USE lahmansbaseballdb; 
SELECT sum(AB) AS sum_at_bats
FROM batting; 

USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
GROUP BY playerid, teamid;






