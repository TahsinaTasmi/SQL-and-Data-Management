-- SQL task 5B assignment

-- task1

CREATE TABLE ProductGroupTBL

(pgroupid INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
pgroupname VARCHAR(45) NOT NULL,
description VARCHAR(50));  

-- task 2


CREATE TABLE  ProductTBL 

(productid INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
producttitle VARCHAR(55), 
price NUMERIC (5,2),
CreatedDate DATE DEFAULT CURDATE(),
pgroupid INTEGER UNSIGNED,  CONSTRAINT ProductTBL_pk1 FOREIGN KEY (pgroupid)
REFERENCES ProductGroupTBL(pgroupid));

-- task3 

INSERT INTO ProductGroupTBL(pgroupname, description)
VALUES ('online', 'works online'), ('offline', 'works offline'); 


-- task 4

INSERT INTO ProductTBL(producttitle, price)
VALUES ('xyz', '10'), ('jklm', '50'); 

-- task 5

CREATE VIEW productreport AS SELECT a.pgroupname, b.producttitle, b.price, b.CreatedDate
FROM ProductGroupTBL a JOIN ProductTBL b ON a.pgroupid=b.pgroupid ORDER BY a.pgroupname, b.producttitle; 

-- task 6

SELECT * FROM productreport 
ORDER BY pgroupname, producttitle; 

-- task 7

UPDATE ProductTBL
SET price= price*2; 

-- task 8

DELETE FROM ProductTBL WHERE CreatedDate='2023-02-27'; 







