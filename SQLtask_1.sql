-- SQL-task, part 1B 


-- task1

SELECT * FROM person;

-- task2

SELECT pid, pname FROM project;

-- task3

SELECT code FROM department; 

-- task4

SELECT fname, lname, taxperc, bdate AS 'the  birthday' FROM person; 

-- task5


SELECT fname, lname, taxperc, bdate AS 'the  birthday' FROM person ORDER BY taxperc, fname; 


-- task6

SELECT fname, lname FROM person WHERE degree= 'BSc'; 


-- task7

SELECT fname, salary FROM person WHERE salary > 2800 ORDER BY fname; 


-- task8

SELECT fname, salary FROM person WHERE salary >= 2800 ORDER BY salary ASC; 


-- task9


SELECT fname, lname, city, degree FROM person WHERE degree= 'BSc' AND city= 'Helsinki'
ORDER BY lname, fname; 


-- task10 

SELECT socsecno, lname, fname,  city, salary FROM person WHERE city= 'Helsinki' OR salary= 3100; 


