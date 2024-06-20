-- task 11 


SELECT * FROM person

WHERE NOT salary='2650' AND NOT salary='2960';



-- task 12 

SELECT * FROM person

WHERE city='TURKU' AND depcode='3' OR taxperc='33';



-- task 13

SELECT * FROM person

WHERE NOT degree='MSc' AND NOT degree='Yo' AND salary BETWEEN 2800 AND 3000; 



-- task 14

SELECT fname, taxperc, salary FROM person WHERE bdate <='1995-01-01';

-- task 15

SELECT * FROM person 

WHERE city LIKE '%U';



-- task 16

SELECT * FROM project

WHERE pname NOT LIKE '%IN%';


-- TASK 17

SELECT * FROM person 
WHERE fname LIKE '__k%' OR lname LIKE '__k%';


-- task 18


SELECT * FROM person 
WHERE salary NOT BETWEEN 2900 AND 4000;


-- task 19


SELECT * FROM person 
WHERE salary IN ('2700', '2800', '2960', '3500');


-- task 20 

SELECT * FROM project 
WHERE priorit IS NOT NULL; 








