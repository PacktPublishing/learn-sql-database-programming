# if statement 
USE lahmansbaseballdb;
SELECT playerid, yearid,
IF(g_all between 0 and 10, 'barely any', 'some more') as gamecount
FROM appearances
WHERE yearid = 1990;

 
# case statement 
SELECT playerid, yearid,
CASE
WHEN g_all between 0 and 10 then 'barely any'
WHEN g_all between 11 and 50 then 'some'
WHEN g_all between 51 and 100 then 'many'
ELSE 'tons'
END
FROM appearances
WHERE yearid = 1990; 

# loop statement 
DELIMITER $$
CREATE PROCEDURE forloopexample()
BEGIN
 DECLARE n INT;
 DECLARE loopreturn VARCHAR(25);
 SET n = 1;
 SET loopreturn = '';
 
 looplabel: LOOP
   IF n > 14 THEN 
   LEAVE looplabel;
 END IF;
 
 SET n = n + 1;
 IF (n mod 2) THEN
   ITERATE looplabel;
 ELSE
   SET loopreturn = CONCAT(loopreturn,n,',');
 END IF;
 END LOOP;
 SELECT loopreturn;
END$$
DELIMITER ;


CALL forloopexample();


# repeat statement 
USE lahmansbaseballdb; 
DELIMITER $$
CREATE PROCEDURE repeatexample()
BEGIN
    DECLARE count INT DEFAULT 1;
    DECLARE result VARCHAR(30) DEFAULT ''; 
    REPEAT
        SET result = CONCAT(result,count,',');
        SET count = count + 1;
    UNTIL count > 10
    END REPEAT; 
    SELECT result;
END$$
DELIMITER ;

CALL repeatexample(); 


# while statement 
USE lahmansbaseballdb; 
DELIMITER $$
CREATE PROCEDURE whileexample()
BEGIN
  DECLARE count INT;
  DECLARE whileresult Varchar(50);
  SET count = 1;
  SET whileresult = '';
  WHILE count <=10 DO
    SET whileresult = CONCAT(whileresult, count, ',');
    SET count = count + 1;
  END WHILE;
  SELECT whileresult;
END $$
DELIMITER ;  

CALL whileexample(); 

/*sql server while */
DECLARE @counter INT = 1;
 
WHILE @counter <= 10
BEGIN
    PRINT @counter;
    SET @counter = @counter + 1;
end





