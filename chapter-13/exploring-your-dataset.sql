USE lahmansbaseballdb;
SELECT AVG(h) AS mean,
STDDEV(h) AS stddev,
VARIANCE(h) AS variance,
MIN(h) AS minimum,
MAX(h) AS maximum
FROM batting;