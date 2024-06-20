-- SQL-task 4B


-- task1 

SELECT pid, socsecno, 'x' AS 'As planned', ' ' AS 'hours %'

FROM proj_pers WHERE hours= hours_planned

UNION

SELECT pid, socsecno, ' ' AS OK, (hours/hours_planned)*100 AS 'hours %'

FROM proj_pers WHERE hours != hours_planned ORDER BY pid, socsecno;




-- task2 

SELECT project.pname, person.lname, person.fname,  proj_pers.hours_planned

FROM project INNER JOIN proj_pers ON project.pid = proj_pers.pid

JOIN person ON proj_pers.socsecno = person.socsecno

ORDER BY hours_planned DESC, pname ASC; 


-- task3 


SELECT department.depname, person.lname, person.fname
FROM person JOIN department ON person.depcode=department.depcode WHERE city='Turku'; 


-- task4


SELECT project.pname, project.pid, person.lname, person.fname, project.location, person.city

FROM project RIGHT JOIN person ON project.location=person.city ORDER BY project.pid DESC; 


-- task5


SELECT A.lname, A.fname,  A.city 

FROM person B INNER JOIN person A ON B.city=A.city

WHERE B.lname='Metsä' AND B.fname='Mikko'; 


-- task6

SELECT a.lname, a.fname, SUM(b.hours_planned) AS 'planned_hours'
FROM person a INNER JOIN proj_pers b ON a.socsecno=b.socsecno WHERE a.city='Tampere'
GROUP BY a.socsecno 
ORDER BY a.lname, a.fname; 

-- task7

SELECT socsecno, pid, hours FROM proj_pers WHERE socsecno IN 
 (SELECT socsecno FROM person WHERE city='Helsinki'); 
 
 -- task8
 
 SELECT lname, fname, depcode
 FROM person WHERE depcode=
 (SELECT depcode FROM department WHERE depname='Production dept'); 
 
 
 -- task9
 
 SELECT socsecno, fname, lname
 FROM person WHERE socsecno IN (SELECT socsecno FROM proj_pers WHERE pid IN 
 (SELECT pid FROM project WHERE location='Turku'));
 
 
 -- task10 
 
 SELECT pid, socsecno, hours 
 FROM proj_pers a WHERE hours >= ALL (SELECT hours FROM proj_pers b WHERE a.pid=b.pid); 
 
 -- task 11
 
 SELECT lname, fname, a.depcode FROM person a
 WHERE EXISTS 
 (SELECT 'x' FROM department b 
 WHERE a.depcode=b.depcode AND CHAR_LENGTH(b.code)>3); 

 
 





