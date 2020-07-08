#start a transaction before a query 
USE lahmansbaseballdb;
START TRANSACTION;
UPDATE managerscopy 
SET lgid = '--'; 

#then either commit 
COMMIT;

#or rollback 
ROLLBACK; 

#run multiple queries in the transaction 
USE lahmansbaseballdb;
CREATE TABLE awards LIKE awardsmanagers; 
START TRANSACTION; 
INSERT INTO awards 
SELECT * FROM awardsmanagers
WHERE awardid = 'BBWAA Manager of the Year';
DELETE FROM awardsmanagers 
WHERE awardid = 'BBWAA Manager of the Year';
COMMIT; 

#run DDL in middle of transaction and it causes auto commit of all queries before it 
USE lahmansbaseballdb;
START TRANSACTION; 
INSERT INTO awards 
SELECT * FROM awardsmanagers
WHERE awardid = 'BBWAA Manager of the Year';
DROP TABLE lahmansbaseballdb.managerscopy;
DELETE FROM awardsmanagers 
WHERE awardid = 'BBWAA Manager of the Year';
COMMIT; 

#set autocommit off and on without using transactions 
SET autocommit = OFF; 
SET autocommit = ON; 

#using savepoints 
USE lahmansbaseballdb;
START TRANSACTION;
SAVEPOINT firstsavepoint;
INSERT INTO awards
SELECT * FROM awardsmanagers
WHERE awardid = 'BBWAA Manager of the Year';
SAVEPOINT secondsavepoint;
DELETE FROM awardsmanagers
WHERE awardid = 'BBWAA Manager of the Year';
ROLLBACK TO firstsavepoint;