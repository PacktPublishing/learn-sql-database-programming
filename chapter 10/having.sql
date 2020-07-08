USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
GROUP BY playerid, teamid 
HAVING sum_at_bats > 100;

USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
WHERE sum(AB) > 100 
GROUP BY playerid, teamid;

USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
GROUP BY playerid, teamid 
HAVING sum_at_bats > 100 
AND sum_at_bats < 400; 

USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
GROUP BY playerid, teamid 
HAVING sum_at_bats BETWEEN 100 AND 400;

USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
WHERE ab <> 0 
AND ab IS NOT NULL 
GROUP BY playerid, teamid 
HAVING sum(AB) BETWEEN 100 and 400; 

 

