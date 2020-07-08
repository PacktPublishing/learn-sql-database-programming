USE lahmansbaseballdb;
SELECT ROUND(AVG(g_all),1) as average_g_all, 
       MAX(g_all) as max_g_all, 
       MIN(g_all) as min_g_all
FROM appearances;

USE lahmansbaseballdb;
SELECT playerid,
       ROUND(AVG(g_all),1) as average_g_all,
       MAX(g_all) as max_g_all,
       MIN(g_all) as min_g_all
FROM appearances
GROUP BY playerid
ORDER BY playerid;

SELECT 
	AVG(ab) AS mean,
	STDDEV(ab) AS 'stddev',
	VARIANCE(ab) AS 'variance',
	MIN(ab) AS minimum,
	MAX(ab) AS maximum
FROM batting;