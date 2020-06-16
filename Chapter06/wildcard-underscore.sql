#finds all rounds that end with "LCS"
USE lahmansbaseballdb; 
SELECT playerid, yearid, teamid, round, pos 
FROM fieldingpost
WHERE round LIKE '_LCS';

#finds all rounds that start with "LCS"
USE lahmansbaseballdb; 
SELECT playerid, yearid, teamid, round, pos 
FROM fieldingpost
WHERE round LIKE 'W_';

#finds all rounds that start with "AL" and has two characters after "AL" 
USE lahmansbaseballdb; 
SELECT playerid, yearid, teamid, round, pos 
FROM fieldingpost
WHERE round LIKE 'AL__';

#finds all rounds that begin with one character, have  "L", then one character then "S" in the middle, and end with one character
USE lahmansbaseballdb; 
SELECT playerid, yearid, teamid, round, pos 
FROM fieldingpost
WHERE round LIKE '_L_S_';