#create database and table to run scripts in this section of the chapter 
CREATE SCHEMA foraltering;

USE foraltering; 
CREATE TABLE tableforaltering (
 playerID varchar(9) NOT NULL,
 schoolID varchar(15) NULL,
 yearID smallint NULL
);

#insert data into the table above 
USE foraltering;
INSERT INTO tableforaltering
VALUES ('aardsda01','pennst',2001),
('aardsda01',NULL,NULL),
('aardsda01','rice',2003),
('abadan01','gamiddl',1992),
('abadan01','gamiddl',1993),
('abbeybe01','vermont',1889),
('abbeybe01','vermont',1890),
('abbeybe01','vermont',1891),
('abbeybe01','vermont',1892),
('abbotje01','kentucky',1991),
('abbotje01','kentucky',1992),
('abbotje01','kentucky',1994);

#add a column 
USE foraltering; 
ALTER TABLE tableforaltering
ADD COLUMN atbats SMALLINT NULL AFTER yearID;

ALTER TABLE tableforaltering
ADD COLUMN hits SMALLINT NULL AFTER atbats;

USE foraltering; 
ALTER TABLE tableforaltering
ADD COLUMN atbats SMALLINT NULL AFTER yearID, 
ADD COLUMN hits SMALLINT NULL AFTER atbats;

#drop a column 
USE foraltering; 
ALTER TABLE tableforaltering
DROP COLUMN atbats;

ALTER TABLE tableforaltering
DROP COLUMN hits;

USE foraltering; 
ALTER TABLE tableforaltering
DROP COLUMN atbats, 
DROP COLUMN hits;

#drop column 
USE yourschema;
ALTER TABLE managers
DROP COLUMN teamid; 

#drop column with foreign key 
USE yourschema;
ALTER TABLE managers
DROP FOREIGN KEY FK_teamid;
ALTER TABLE managers
DROP COLUMN teamid;


#rename column 
USE foraltering;
ALTER TABLE tableforaltering
CHANGE COLUMN atbats numberofatbats SMALLINT;

#change data type of column 
USE foraltering;
ALTER TABLE tableforaltering
CHANGE COLUMN schoolID schoolID VARCHAR(16);

#gives error that it will truncate data 
USE foraltering;
ALTER TABLE tableforaltering
CHANGE COLUMN schoolID schoolID VARCHAR(7);

#gives error that can't convert to int 
USE foraltering;
ALTER TABLE tableforaltering 
CHANGE COLUMN schoolID schoolID INT;

USE foraltering;
ALTER TABLE tableforaltering
CHANGE COLUMN yearID yearID SMALLINT;

#add or change column constraint 
#add not null constraint 
USE foraltering;
ALTER TABLE tableforaltering
CHANGE COLUMN schoolID schoolID VARCHAR(8) NOT NULL,
CHANGE COLUMN yearID yearID SMALLINT NOT NULL;

#add check constraint 
USE foraltering;
ALTER TABLE tableforaltering
ADD CONSTRAINT check_yearid CHECK ((yearid >= 1871) and (yearid <= 2155));

#drop a constraint 
#drop check constraint 
USE foraltering;
ALTER TABLE tableforaltering
DROP CHECK check_yearid;

#drop foreign key constraint 
ALTER TABLE tablename
DROP FOREIGN KEY FK_keyname;

#drop primary key
ALTER TABLE tablename
DROP PRIMARY KEY;

#drop index 
USE yourschema;
ALTER TABLE managers 
DROP INDEX playerid_yearid_teamid_UNIQUE;

#drop check constraint in oracle, postresql, or sql server 
ALTER TABLE tableforaltering
DROP CONSTRAINT check_yearid;

#drop a table 
USE foraltering
DROP TABLE tableforaltering;




