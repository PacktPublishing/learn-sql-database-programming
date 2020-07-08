#using exists 
USE lahmansbaseballdb; 
SELECT f.playerid, f.yearid, f.teamid, pos
FROM fielding f
WHERE EXISTS(SELECT 1
                FROM salaries s 
                WHERE salary < 200000
                AND salary IS NOT NULL
                AND (f.playerid = s.playerid 
                        AND f.teamid = s.teamid 
                        AND f.yearid = s.yearid))
ORDER BY f.playerid;

#using in 
USE lahmansbaseballdb; 
SELECT f.playerid, f.yearid, f.teamid, pos
FROM fielding f
WHERE playerid IN (SELECT playerid
                FROM salaries s 
                WHERE salary < 200000
                AND salary IS NOT NULL
                AND (f.playerid = s.playerid 
                        AND f.teamid = s.teamid 
                        AND f.yearid = s.yearid))
ORDER BY f.playerid; 

#in a select 
USE lahmansbaseballdb; 
SELECT f.playerid, f.yearid, f.teamid, pos, 
    (SELECT salary
      FROM salaries s 
      WHERE (f.playerid = s.playerid 
              AND f.teamid = s.teamid 
              AND f.yearid = s.yearid)) AS salary
FROM fielding f
ORDER BY f.playerid; 
