#column alias
SELECT playerid, 
	   G_defense AS GamesPlayingDefense
FROM lahmansbaseballdb.appearances; 

#column alias with space 
SELECT playerid, 
	   G_defense AS 'Games Playing Defense'
FROM lahmansbaseballdb.appearances; 