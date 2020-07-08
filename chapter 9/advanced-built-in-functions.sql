SELECT CURRENT_USER(); -- returns 'root@%' 
SELECT DATABASE(); -- returns lahmansbaseballdb (depending on which database you are using)  
SELECT VERSION(); -- returns '8.0.18' (depending on your MySQL version) 

SELECT CAST('2019-06-10 11:12:13' AS DATE);  -- returns '2019-06-10' 
SELECT CAST('2019-06-10 11:12:13' AS UNSIGNED);  -- returns 2019

SELECT CONVERT('2019-06-10 11:12:13', DATE);  -- returns '2019-06-10' 
SELECT CONVERT('100.2', decimal(5,2));  -- returns 100.20
SELECT CONVERT('2019-06-10 11:12:13', unsigned); -- returns 2019
SELECT CONVERT('testing' USING latin1); -- returns a BLOB 

SELECT IF(10<20, 1, 2);  -- returns 1 
SELECT IF(10<20, 'true', 'false');  -- returns true

-- case example  
USE lahmansbaseballdb; 
SELECT playerid, yearid,
CASE
WHEN g_all between 0 and 10 then 'barely any'
WHEN g_all between 11 and 50 then 'some'
WHEN g_all between 51 and 100 then 'many'
ELSE 'tons'
END
from appearances; 

SELECT LAST_INSERT_ID();  -- if the table has auto-increment enabled, it will return the last ID that was used on insert 

SELECT NULLIF(1, 1); -- returns NULL
SELECT NULLIF(1, 2); -- returns 1

SELECT IFNULL(NULL, 'testing'); -- returns 'testing'
SELECT IFNULL(NULL, NULL); -- returns NULL 

SELECT ISNULL(NULL);  -- returns 1
SELECT ISNULL('testing');  -- returns 0