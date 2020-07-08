/* create statement all on one line is less readable */
CREATE TABLE `managers` (`managerkey` smallint NOT NULL,`playerid` varchar(9) NOT NULL,`yearid` year(4) NOT NULL,`teamid` char(3) NOT NULL); 

/* create statement separated into multiple lines is more readable */
CREATE TABLE `managers` (
`managerkey` smallint NOT NULL,
`playerid` varchar(9) NOT NULL,
`yearid` year(4) NOT NULL); 

/* slower query */
SELECT column WHERE UPPER(column) = 'ab';

/* faster query */ 
SELECT column WHERE column = 'ab';

