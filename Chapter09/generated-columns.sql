USE lahmansbaseballdb;
ALTER TABLE batting
ADD COLUMN batavg DECIMAL(4,3) 
GENERATED ALWAYS AS (h/ab) 
AFTER lgID;

USE lahmansbaseballdb;
ALTER TABLE batting
ADD COLUMN batavgstored DECIMAL(4,3) GENERATED ALWAYS AS (h/ab) STORED AFTER lgID;

USE lahmansbaseballdb;
ALTER TABLE batting
ADD COLUMN batavgstored DECIMAL(4,3) 
GENERATED ALWAYS AS (h/NULLIF(ab,0)) 
STORED AFTER lgID;

