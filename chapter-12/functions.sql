USE lahmansbaseballdb; 
DELIMITER $$
 CREATE FUNCTION hittinglevel(
 g_all smallint
 )
 RETURNS VARCHAR(10)
 DETERMINISTIC
 BEGIN
 DECLARE hitlevel VARCHAR(10);
 IF g_all BETWEEN 0 and 10 THEN
 SET hitlevel = 'barely any';
 ELSEIF g_all BETWEEN 11 and 50 THEN
 SET hitlevel = 'some';
 ELSEIF g_all BETWEEN 51 and 100 THEN
 SET hitlevel = 'many';
 ELSEIF g_all > 100 THEN
 SET hitlevel = 'tons';
 END IF;
 RETURN (hitlevel);
 END$$
 DELIMITER ;
 
 
 USE lahmansbaseballdb;
 SELECT playerid, yearid, teamid,
        hittinglevel(ab) AS hits
 FROM batting
 WHERE yearid = 2017;
 
 DROP FUNCTION hittinglevel;
 
 
 