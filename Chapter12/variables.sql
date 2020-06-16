USE lahmansbaseballdb;
/* DECLARE @varname varchar(5);  in sql server you have to declare the variable before setting it */
/* DECLARE @varname varchar(5) = 'ALB01';  Also, in sql server you can declare and set the variable in one line */
SET @varname := 'ALB01';
SELECT * FROM parks_copy
WHERE parkkey = @varname;


/* oracle variables */
DECLARE
	var_parkname varchar2(100); 
	var_parkkey varchar2(5) := 'ALB01'; 
BEGIN
SELECT parkname INTO var_parkname FROM parks_copy
WHERE parkkey = var_parkkey; 
DBMS_OUTPUT.PUT_LINE(var_parkname);
END; 
