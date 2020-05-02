# fixing missing values 
USE lahmansbaseballdb; 
SELECT 
SUM(!ISNULL(birthyear)) AS birthyear_count,
SUM(ISNULL(birthyear)) AS null_birthyear_count
FROM people;

USE lahmansbaseballdb; 
SELECT playerid, namefirst, namelast, debut 
FROM people 
WHERE birthyear is NULL; 

USE lahmansbaseballdb;
UPDATE people
SET birthyear = whateverbirthyeariscorrect
WHERE playerid = 'barre01';
