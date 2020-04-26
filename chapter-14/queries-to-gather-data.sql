#finding statistical identity of your data 
USE lahmansbaseballdb;
SELECT f.pos, FORMAT(AVG(salary),0) as averagesalary
FROM salaries s 
INNER JOIN fielding f 
ON f.playerid = s.playerid
AND f.yearid = s.yearid
GROUP BY pos
ORDER BY averagesalary; 

#average salaries 
USE lahmansbaseballdb;
SELECT f.pos as position, FORMAT(AVG(salary),0) as averagesalary
FROM salaries s 
INNER JOIN fielding f 
ON f.playerid = s.playerid
AND f.yearid = s.yearid
GROUP BY position
ORDER BY averagesalary;

#batting averages
USE lahmansbaseballdb;
SELECT f.pos as position, avg(h/ab) as battingaverage
FROM fielding f
INNER JOIN batting b
ON f.playerid = b.playerid
AND f.yearid = b.yearid
GROUP BY position
ORDER BY battingaverage;

#fielding skills 
USE lahmansbaseballdb;
SELECT f.pos as position, avg(innouts) as inningouts,
FROM fielding f
WHERE f.pos IN ('2B', 'SS')
GROUP BY position;

#pitcher earned runs 
USE lahmansbaseballdb;
SELECT format(avg(salary),0) as avgsalary, 
CASE WHEN round((er/(ipouts/3))*9, 2) < 4.6 
then 'ERA less than average runs scored per game' 
ELSE 'ERA more than average runs scored per game' 
END as eracalc 
FROM pitching p 
INNER JOIN salaries s 
ON p.playerid = s.playerid  
GROUP BY eracalc 
ORDER BY avgsalary; 

#average number of runs per game 
USE lahmansbaseballdb;
SELECT avg(r/g) as avgrunspergame FROM teams;

#managers average salary 
USE lahmansbaseballdb;
SELECT CASE WHEN w/g > .5 then 'winning record' 
else 'losing record' 
END as winratio, 
FORMAT(AVG(salary), 0) as avgsalary
FROM managers m
INNER JOIN salaries s 
ON s.playerid = m.playerid 
GROUP BY winratio; 

#manager salary vs position player salaries 
USE lahmansbaseballdb;
SELECT 'manager' as position, FORMAT(AVG(salary), 0) as averagesalary
FROM managers m
INNER JOIN salaries s 
ON s.playerid = m.playerid
UNION 
SELECT f.pos as position, FORMAT(AVG(salary),0) as averagesalary
FROM salaries s 
INNER JOIN fielding f 
ON f.playerid = s.playerid
AND f.yearid = s.yearid
GROUP BY position
ORDER BY averagesalary; 





