#with use statement 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting, g_defense FROM appearances;

#without use statement, then database reference needs to be in front of table reference i.e. lahmansbaseballdb.appearances
SELECT playerid, g_all, g_batting, g_defense FROM lahmansbaseballdb.appearances;