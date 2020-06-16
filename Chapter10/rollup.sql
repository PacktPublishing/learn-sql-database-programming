USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
GROUP BY playerid, teamid;

USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
GROUP BY playerid, teamid WITH ROLLUP; 

/* in oracle, postgresql, and sql server */ 
USE lahmansbaseballdb; 
SELECT playerid, teamid, sum(AB) AS sum_at_bats
FROM batting 
GROUP BY ROLLUP (playerid, teamid)
ORDER BY playerid, teamid; 