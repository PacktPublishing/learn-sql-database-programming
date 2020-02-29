USE lahmansbaseballdb;
 DELIMITER $$
 CREATE PROCEDURE insertallstarfull(
 IN inplayerid varchar(9),
 IN inyearid smallint,
 IN ingamenum smallint
 )
 BEGIN
 DECLARE EXIT HANDLER FOR 1062
 BEGIN
 SELECT CONCAT('Duplicate key (',inplayerid,',',inyearid,',',ingamenum,') occurred') AS message;
 END;
 
 INSERT INTO allstarfull (playerid, yearid, gamenum)
 VALUES (inplayerid, inyearid, ingamenum);
 
 SELECT count(*)
 FROM allstarfull
 WHERE playerid = inplayerid;
 END$$
 DELIMITER ;
 
 # following call produces error 
 CALL insertallstarfull('aaronha01', 1958, 0); 
 
 # following call doesn't 
 CALL insertallstarfull('aaronha01', 1954, 0);