USE lahmansbaseballdb; 
SELECT COUNT(batavg) AS count,
       SUM(batavg) AS sum,
       AVG(batavg) AS mean,
       STDDEV(batavg) AS 'stddev',
       VARIANCE(batavg) AS 'variance',
       MIN(batavg) AS minimum,
       MAX(batavg) AS maximum
FROM batting; 

USE lahmansbaseballdb; 
SELECT AVG(h) AS mean,
       STDDEV(h) AS 'stddev',
       VARIANCE(h) AS 'variance',
       MIN(h) AS minimum,
       MAX(h) AS maximum
FROM batting;