USE lahmansbaseballdb; 
ALTER VIEW parksalias AS
SELECT parkalias, parkkey, parkname, city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL
WITH CHECK OPTION; 

USE lahmansbaseballdb; 
DROP VIEW playergameinfo; 