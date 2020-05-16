CREATE TABLE yourschema.`teams` (
`teamkey` smallint(5) NOT NULL AUTO_INCREMENT,
`teamid` char(3) NOT NULL,
`yearid` year(4) NOT NULL,
`leagueid` char(2) NOT NULL,
`teamrank` tinyint(2) NOT NULL,
PRIMARY KEY (`teamkey`),
UNIQUE KEY `teamkey_UNIQUE` (`teamkey`),
KEY `teamid_yearid_leagueid_UNIQUE` (`teamid`,`yearid`,`leagueid`),
CONSTRAINT `check_teamrank` CHECK (((`teamrank` >= 0) and (`teamrank` <= 12))),
CONSTRAINT `check_year` CHECK (((`yearid` >= 1871) and (`yearid` <= 2155)))) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;