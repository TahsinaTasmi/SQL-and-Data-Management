
-- SQL_task__3B


-- task 1

SELECT fname from person 

WHERE city='TURKU' ORDER BY fname ASC;

-- task 2

SELECT COUNT(DISTINCT depcode) as depcount FROM person ;

-- task 3

/* SELECT COUNT(hours) FROM proj_pers;

SELECT COUNT(hours_planned) FROM proj_pers;

SELECT COUNT(*) FROM proj_pers;


Answer: 

The COUNT(hours) function gives the count of all rows present in the column of “hours” from 
the “proj_pers” table excluding the NULL values. But there is no NULL value in the “hours” column. 
So, it shows the count of NON-NULL values which is 13 by excluding the NULL values from 
the “hours” column. 


The COUNT(hours_planned) function gives the count of all rows present in the column of 
“hours_planned” from the “proj_pers” table excluding the NULL values. So it shows 
the count of NON-NULL values which is 11 by excluding the NULL values from the “hours” column. 


The COUNT(*) function gives the count of all rows present in the proj_pers table 
(including the NULL and NON-NULL values). 
There are 13 rows in the proj_pers table which is also equal to the count of 
NON-NULL values from the “hours” column. Therefore, one of the following three queries 
ends up in different results than the two others.


*/ 


-- task 4


SELECT CONCAT(lname, " ", salary) AS salary3

FROM person

ORDER BY salary ASC;


-- task 5


SELECT CURDATE() AS paydate, 
DATE_ADD(CURDATE(), INTERVAL 5 DAY ) 
AS due_date;  

-- task 6

SELECT DAYNAME(CURDATE()) AS paydate, DAYNAME(ADDDATE(CURDATE(), 5)) AS due_date; 


-- task 7


SELECT pid, SUM(hours) AS "HOUR SUM"
  FROM proj_pers
  GROUP BY pid;
  
  
 
 -- task 8 
 
 SELECT city, COUNT(*) AS 'people' FROM person GROUP BY city;   
 
 -- task 10
 
 SELECT MIN(hours), MAX(hours), MAX(hours)-MIN(hours) AS difference,
 (MAX(hours)-MIN(hours))/MIN(hours)*100 AS 'difference%' FROM proj_pers; 
 
 -- task 11
 
 SELECT fname, lname, salary FROM person WHERE salary*0.85 <= 2500; 
 

 
 

 
 
 

