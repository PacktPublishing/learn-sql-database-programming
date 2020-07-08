#in MySQL
USE yourschema;
describe managers;
 
SELECT * FROM information_schema.table_constraints
WHERE table_name = 'managers'
AND table_schema = 'yourschema';

SHOW CREATE TABLE managers;
