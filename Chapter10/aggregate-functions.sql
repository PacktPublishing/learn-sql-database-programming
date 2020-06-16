USE lahmansbaseballdb;
SELECT 
       ROUND(AVG(g_all),1) as average_g_all_rounded, 
       MAX(g_all) as max_g_all, 
       MIN(g_all) as min_g_all, 
       FORMAT(COUNT(g_all), 0) as count_g_all_formatted, 
       SUM(g_all) as sum_g_all
FROM appearances;


USE lahmansbaseballdb; 
SELECT 
 STDDEV(h) AS 'stddev',
 VARIANCE(h) AS 'variance'
FROM batting;



