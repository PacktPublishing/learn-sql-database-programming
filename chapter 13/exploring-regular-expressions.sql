USE lahmansbaseballdb; 
SELECT playerid
FROM people
WHERE playerid REGEXP '^a';

SELECT birthcity
FROM people
WHERE birthcity REGEXP 'y$'; 

SELECT birthyear
FROM people
WHERE birthyear REGEXP '199.'; 

SELECT playerid
FROM people
WHERE playerid REGEXP '^[C]'
ORDER BY playerid;

SELECT playerid
FROM people
WHERE playerid REGEXP '^[^C]'
ORDER BY playerid;

SELECT playerid
FROM people
WHERE playerid REGEXP '^[C|D|E]'
ORDER BY playerid;

SELECT birthcity
FROM people
WHERE birthcity REGEXP 'son+';

SELECT DISTINCT birthcity
FROM people
WHERE birthcity REGEXP '^[abc].{3}on$'
ORDER BY birthcity; 




