# fixing erroneous values 
USE lahmansbaseballdb; 
SELECT * FROM schools
WHERE name_full = '"California Polytechnic State University'; 

USE lahmansbaseballdb; 
UPDATE schools
SET name_full = 'California Polytechnic State University', 
 city = 'San Luis Obispo', 
 state = 'CA', 
 country = 'USA'
WHERE schoolid = 'calpolypom'; 