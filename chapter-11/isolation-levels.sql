#set transaction isolation level on a query 
USE lahmansbaseballdb; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; /*doesn't work in oracle since it only allows serializable or read committed */
SELECT * FROM appearances; 
