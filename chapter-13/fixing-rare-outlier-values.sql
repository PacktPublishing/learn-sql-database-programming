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




