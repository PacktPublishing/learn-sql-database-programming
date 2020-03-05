# create copy of parks table 
USE lahmansbaseballdb;
CREATE TABLE parks_copy AS
SELECT * FROM parks

CREATE VIEW parksalias AS
SELECT parkalias, parkkey, parkname, 
       city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL
WITH CHECK OPTION;


SELECT * FROM parksalias;

UPDATE parksalias
SET parkalias = NULL
WHERE parkkey = 'ANA01';

DROP VIEW parksalias; 


CREATE VIEW parksalias AS
SELECT parkalias, parkkey, parkname, 
       city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL; 


INSERT INTO parksalias
VALUES (NULL, 
 'TST01', 
 'testing park name', 
 'Seattle', 
 'WA', 
 'US');
 

ALTER TABLE parks_copy
CHANGE COLUMN ID ID SMALLINT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (ID);


DELETE from parksalias 
WHERE parkkey = 'ALB01'; 


DELETE from parksalias 
WHERE parkkey = 'TST01'; 


 