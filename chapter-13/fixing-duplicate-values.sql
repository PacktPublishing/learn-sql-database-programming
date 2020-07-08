USE lahmansbaseballdb;
DROP TABLE IF EXISTS schools_copy;
CREATE TABLE schools_copy
SELECT *
FROM schools
WHERE 1=0;  

INSERT INTO schools_copy VALUES 
('adelphi','Adelphi University','Garden City','NY','USA'),
('adrianmi','Adelphi University','Garden City','NY','USA'),
('akron','University of Akron','Akron','OH','USA'),
('alabama','University of Alabama','Tuscaloosa','AL','USA'),
('alabamast','Alabama State University','Montgomery','AL','USA'); 

SELECT name_full
FROM schools_copy
GROUP BY name_full
HAVING count(*) >= 2;

USE lahmansbaseballdb;
SELECT * FROM schools_copy
WHERE name_full = 'Adelphi University'; 

USE lahmansbaseballdb;
UPDATE schools_copy
SET name_full = 'Adrian College', city = 'Adrian', state = 'MI', country = 'USA'
WHERE schoolid = 'adrianmi'; 


