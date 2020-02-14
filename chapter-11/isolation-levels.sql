#set transaction isolation level on a query 
USE lahmansbaseballdb; 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; 
SELECT * FROM appearances; 