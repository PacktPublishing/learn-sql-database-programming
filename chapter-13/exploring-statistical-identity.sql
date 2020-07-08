USE lahmansbaseballdb;
SELECT AVG(h) AS mean,
STDDEV(h) AS stddev,
VARIANCE(h) AS variance,
MIN(h) AS minimum,
MAX(h) AS maximum
FROM batting;

SELECT playerid, 
AVG(h) AS mean,
STDDEV(h) AS stddev,
VARIANCE(h) AS variance,
MIN(h) AS minimum,
MAX(h) AS maximum
FROM batting
GROUP BY playerid;

SELECT yearid, 
AVG(h) AS mean,
STDDEV(h) AS stddev,
VARIANCE(h) AS variance,
MIN(h) AS minimum,
MAX(h) AS maximum
FROM batting
GROUP BY yearid; 

SELECT teamid, 
AVG(h) AS mean,
STDDEV(h) AS stddev,
VARIANCE(h) AS variance,
MIN(h) AS minimum,
MAX(h) AS maximum
FROM batting
GROUP BY teamid; 

