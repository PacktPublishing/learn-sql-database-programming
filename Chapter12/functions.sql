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

/* create function in sql server */
CREATE FUNCTION hittinglevel(@g_all SMALLINT)  
RETURNS VARCHAR(10)   
AS   
BEGIN  
    DECLARE @hitlevel varchar(10); 
    IF @g_all BETWEEN 0 and 10
    SET @hitlevel = 'barely any'
    IF @g_all BETWEEN 11 and 50
    SET @hitlevel = 'some'
    IF @g_all BETWEEN 51 and 100
    SET @hitlevel = 'many'
    IF @g_all > 100 
    SET @hitlevel = 'tons'
    RETURN @hitlevel;  
END; 

/* create function in postgres */
CREATE FUNCTION hittinglevel(g_all SMALLINT)  
RETURNS VARCHAR(10) 
AS  $hitlevel$
DECLARE hitlevel varchar(10);
BEGIN
     IF g_all BETWEEN 0 and 10 THEN
	 SET hitlevel = 'barely any';
	 ELSEIF g_all BETWEEN 11 and 50 THEN
	 SET hitlevel = 'some';
	 ELSEIF g_all BETWEEN 51 and 100 THEN
	 SET hitlevel = 'many';
	 ELSEIF g_all > 100 THEN
	 SET hitlevel = 'tons';
	 END IF;
    RETURN hitlevel;  
END; 
$hitlevel$
LANGUAGE plpgsql;

/* create function in oracle */
CREATE OR REPLACE FUNCTION hittinglevel(g_all IN NUMBER)  
	RETURN VARCHAR AS 
	hitlevel VARCHAR(10);  
BEGIN  
    hitlevel := CASE
    WHEN g_all BETWEEN 0 and 10 THEN 'barely any'
    WHEN g_all BETWEEN 11 and 50 THEN 'some'
    WHEN g_all BETWEEN 51 and 100 THEN 'many'
    ELSE 'tons'
    END;
    RETURN hitlevel; 
END; 
 
 
SELECT playerid, yearid, teamid,
        hittinglevel(ab) AS hits
FROM batting
WHERE yearid = 2017;
 
DROP FUNCTION hittinglevel;


 
 
 