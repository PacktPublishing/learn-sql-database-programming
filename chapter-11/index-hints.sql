/*doesn't work in sql server, postgres, or oracle - see the earlier chapters for explanations*/ 

#create index to use 
USE lahmansbaseballdb; 
ALTER TABLE appearances
ADD INDEX NC_playerid_g_cols 
(playerID ASC, G_all ASC, G_batting ASC, G_defense ASC) VISIBLE;

#show indexes in table 
USE lahmansbaseballdb; 
SHOW INDEXES FROM appearances;

#explain query without hint 
USE lahmansbaseballdb; 
EXPLAIN SELECT playerid FROM appearances; 

#explain query with hint 
USE lahmansbaseballdb;
EXPLAIN SELECT playerid FROM appearances USE INDEX (PRIMARY);



