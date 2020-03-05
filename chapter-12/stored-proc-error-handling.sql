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


/* error handling for postgresql */ 
DO $$ 
BEGIN 
INSERT INTO allstarfull (playerid, yearid, gamenum)
 VALUES ('aaronha01', 1958, 0);
exception when others then 
RAISE notice '% %', SQLERRM, SQLSTATE;
END $$;

 

/* error handling for sql server */ 
DECLARE  @inplayerid varchar(9) = 'aaronha01';
DECLARE @inyearid smallint = 1958; 
DECLARE @ingamenum smallint  = 0; 

BEGIN TRY 
 INSERT INTO allstarfull (playerid, yearid, gamenum)
 VALUES (@inplayerid, @inyearid, @ingamenum);
 
 SELECT count(*)
 FROM allstarfull
 WHERE playerid = @inplayerid;
END TRY
BEGIN CATCH 
SELECT   
        ERROR_NUMBER() AS ErrorNumber  
       ,ERROR_MESSAGE() AS ErrorMessage; 
END CATCH;



