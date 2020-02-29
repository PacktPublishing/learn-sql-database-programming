USE lahmansbaseballdb;
CREATE TABLE parks_copy
SELECT * FROM parks

USE lahmansbaseballdb;
CREATE VIEW parksalias AS
SELECT parkalias, parkkey, parkname, 
       city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL
WITH CHECK OPTION;

USE lahmansbaseballdb;
SELECT * FROM parksalias;

UPDATE parksalias
SET parkalias = NULL
WHERE parkkey = 'ANA01';

USE lahmansbaseballdb; 
CREATE VIEW parksalias AS
SELECT parkalias, parkkey, parkname, 
       city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL; 


USE lahmansbaseballdb;
INSERT INTO parksalias
VALUES (NULL, 
 'TST01', 
 'testing park name', 
 'Seattle', 
 'WA', 
 'US');
 
 USE lahmansbaseballdb;
ALTER TABLE parks_copy
CHANGE COLUMN ID ID SMALLINT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (ID);

USE lahmansbaseballdb; 
CREATE VIEW parksalias AS
SELECT parkalias, parkkey, parkname, 
       city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL;

USE lahmansbaseballdb;
DELETE from parksalias 
WHERE parkkey = 'ALB01'; 

USE lahmansbaseballdb;
DELETE from parksalias 
WHERE parkkey = 'TST01'; 


 