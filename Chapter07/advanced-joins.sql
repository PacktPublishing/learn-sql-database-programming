#cross join 
USE lahmansbaseballdb
SELECT c.playerid, c.schoolid, c.yearid, city, state, country 
FROM collegeplaying c 
CROSS JOIN schools s 
WHERE s.schoolid = 'akron';

#cross join without cross keyword will work the same as the cross join 
#does not work in sql server
USE lahmansbaseballdb
SELECT c.playerid, c.schoolid, c.yearid, city, state, country 
FROM collegeplaying c 
JOIN schools s 
WHERE s.schoolid = 'akron';

#natural join 
#does not work in sql server 
USE lahmansbaseballdb
SELECT c.playerid, c.schoolid, c.yearid, s.schoolid, city, state, country 
FROM collegeplaying c 
NATURAL JOIN schools s; 

#self join 
USE lahmansbaseballdb
SELECT e.FirstName + ' ' + e.LastName AS EmployeeName, 
    m.FirstName + ' ' + m.LastName AS ManagerName 
FROM Employees AS e 
LEFT OUTER JOIN Employees m 
ON e.ManagerID = m.EmployeeID 
ORDER BY ManagerName;


