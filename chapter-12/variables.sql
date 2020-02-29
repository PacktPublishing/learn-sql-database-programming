USE lahmansbaseballdb;
SET @varname := 'ALB01';
SELECT * FROM parks_copy
WHERE parkkey = @varname;
