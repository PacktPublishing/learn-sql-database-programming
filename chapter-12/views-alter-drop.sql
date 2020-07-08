USE lahmansbaseballdb; 
ALTER VIEW parksalias AS /*not available in postgresql or oracle */ 
SELECT parkalias, parkkey, parkname, city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL
WITH CHECK OPTION; 

/* use this in postgresql or oracle instead */ 
CREATE OR REPLACE VIEW parksalias AS
SELECT parkalias, parkkey, parkname, city, state, country
FROM parks_copy
WHERE parkalias IS NOT NULL
WITH CHECK OPTION; 

DROP VIEW playergameinfo; 