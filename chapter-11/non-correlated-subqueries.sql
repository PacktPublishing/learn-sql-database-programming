#using in 
USE lahmansbaseballdb;
SELECT playerid, yearid, g as GamesBatted 
FROM batting
WHERE playerid IN (SELECT playerid FROM people WHERE birthcity = 'Boston');

#using not in 
USE lahmansbaseballdb;
SELECT playerid, yearid, g as GamesBatted
FROM batting
WHERE playerid NOT IN (SELECT playerid FROM people WHERE birthcity = 'Boston');

#using >= 
USE lahmansbaseballdb; 
SELECT playerid, yearid, salary
FROM salaries
WHERE salary >= 
 (SELECT AVG(salary)
 FROM salaries
 WHERE teamid = 'DET'
 GROUP BY teamid)
ORDER BY playerid, yearid;

#using any 
USE lahmansbaseballdb; 
SELECT playerid, yearid, salary
FROM salaries
WHERE salary >= ANY
     (SELECT AVG(salary)
    FROM salaries
    GROUP BY teamid)
ORDER BY playerid, yearid;

#using all 
USE lahmansbaseballdb; 
SELECT playerid, yearid, salary
FROM salaries
WHERE salary >= ALL
     (SELECT AVG(salary)
    FROM salaries
    GROUP BY teamid)
ORDER BY playerid, yearid;

#using in select clause 
USE lahmansbaseballdb; 
SELECT playerid, yearid, salary,
    (SELECT ROUND(AVG(salary), 0) /* use ROUND(AVG(salary)) in PostgreSQL */
  FROM salaries) AS average_salary,
    salary - (SELECT ROUND(AVG(salary), 0) /* use ROUND(AVG(salary)) in PostgreSQL */
              FROM salaries) AS difference, 
  (SELECT MAX(salary)
  FROM salaries) AS max_salary
FROM salaries
ORDER BY playerid, yearid;

#using in from clause 
USE lahmansbaseballdb; 
SELECT ROUND(AVG(average_salary), 0) AS average_of_all_teams_salaries  /* use ROUND(AVG(salary)) in PostgreSQL */
FROM
 (SELECT AVG(salary) average_salary 
  FROM salaries 
  GROUP BY teamid) AS team_salary; /* remove AS in Oracle */ 
 
USE lahmansbaseballdb;
SELECT ROUND(AVG(average_salary), 0) AS average_of_all_teams_salaries  /* use ROUND(AVG(salary)) in PostgreSQL */
FROM
 (SELECT AVG(salary) average_salary
 FROM salaries
 GROUP BY teamid) AS team_salary /* remove AS in Oracle */
WHERE team_salary.average_salary > 2000000; 

#using in insert update and delete 
USE lahmansbaseballdb;
 CREATE TABLE salaries_avg (
 teamID varchar(3) NOT NULL,
 salaryavg double NOT NULL  /* use float type in sql server and use real type in postgresql */
 );
 
 USE lahmansbaseballdb; 
 INSERT INTO salaries_avg
 SELECT teamid, average_salary
 FROM
 (SELECT teamid, AVG(salary) average_salary
 FROM salaries
 GROUP BY teamid) AS team_salary
 WHERE team_salary.average_salary > 2000000;
 
USE lahmansbaseballdb; 
UPDATE salaries_avg 
SET 
 teamid = (SELECT teamid
            FROM
             (SELECT teamid, AVG(salary) average_salary
                 FROM salaries
                 GROUP BY teamid) AS team_salary
             WHERE team_salary.average_salary > 2000000
             LIMIT 1);   /* use TOP in sql server instead of LIMIT */
             
             
USE lahmansbaseballdb; 
DELETE FROM salaries_avg
WHERE teamid IN (SELECT teamid
                FROM
                (SELECT teamid, AVG(salary) avgsalary
                    FROM salaries
                    GROUP BY teamid) AS team_salary
                WHERE team_salary.avgsalary > 2000000
                AND teamid = 'ATL'); 
             
             
 
 


