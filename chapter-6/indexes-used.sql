#run query to see explanation of query plan
USE lahmansbaseballdb;
EXPLAIN SELECT playerid, g_all, g_batting, g_defense 
FROM appearances;

#run query to see explanation of query plan
USE lahmansbaseballdb;
EXPLAIN SELECT distinct playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE 'a%'
ORDER BY playerid; 

#adding index to improve query plan
ALTER TABLE `lahmansbaseballdb`.`appearances` 
ADD INDEX `NC_playerid_g_cols` (`playerID` ASC, `G_all` ASC, `G_batting` ASC, `G_defense` ASC) VISIBLE;
;

#run query to see explanation of query plan
USE lahmansbaseballdb;
EXPLAIN SELECT distinct playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE 'a%'
ORDER BY playerid; 

#run query to see explanation of query plan
USE lahmansbaseballdb;
EXPLAIN SELECT distinct playerid
FROM appearances
WHERE playerid LIKE 'a%'
ORDER BY playerid;

#run query and then see visual plan in mysql workbench
USE lahmansbaseballdb;
SELECT distinct playerid, g_all, g_batting, g_defense 
FROM appearances
WHERE playerid LIKE 'a%'
ORDER BY playerid; 

#drop index to see query plan without it 
ALTER TABLE `lahmansbaseballdb`.`appearances`
DROP INDEX `NC_playerid_g_cols`; 
