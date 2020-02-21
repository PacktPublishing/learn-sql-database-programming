#non-recursive cte
USE lahmansbaseballdb;
WITH avgsalarycte 
AS
(SELECT AVG(salary) AS average_salary
FROM salaries
GROUP BY teamid)

SELECT ROUND(AVG(average_salary), 0) AS average_of_all_teams_salaries /* use ROUND(AVG(average_salary)) in PostgreSQL */
FROM avgsalarycte
WHERE average_salary > 2000000;

#recursive cte
WITH RECURSIVE cte (x) AS  /* remove RECURSIVE to use with sql server and oracle */
(
 SELECT 1 /* add FROM dual for oracle */ 
 UNION ALL 
 SELECT x + 1 FROM cte
 WHERE x < 10
)
SELECT x FROM cte;