USE lahmansbaseballdb;
SELECT UPPER(playerid) as playeridupper,
       playerid, 
       LOWER(CONCAT(teamid, ' ', lgid)) as teamleague, 
       teamid, 
       lgid,
       LOWER(gameid) as gameidlower,
       gameid
FROM allstarfull;

SELECT CHAR_LENGTH('string'); -- returns 6
SELECT LENGTH('string'); -- returns 6 
SELECT CONCAT('string1', 'string2'); -- returns string1string2
SELECT LEFT('string', 3); -- returns str
SELECT RIGHT('string', 3); -- returns ing
SELECT LOWER('String'); -- returns string
SELECT UPPER('String'); -- returns STRING
SELECT LTRIM('    String'); -- returns String
SELECT RTRIM('String    '); -- returns String
SELECT TRIM('    String    ');  -- returns String
SELECT LPAD('String', 8, 'x'); -- returns String with three spaces before it 
SELECT RPAD('String', 8, 'x'); -- returns String with three spaces after it 
SELECT REPLACE('string', 'str', 'ing'); -- returns inging
SELECT SUBSTRING('string', 2, 3); -- returns tri 
SELECT REVERSE('string'); -- returns gnirts