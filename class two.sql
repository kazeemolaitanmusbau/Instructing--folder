/* DDL: Data Defination Language

DML : Data Manipulation Language

DCL : Data control language


 RDBMS.. oracle,  mysql,, postgresql, accessdb.. */


-- creating db

CREATE DATABASE first_database;

-- delete db
DROP DATABASE "first database";



-- creating table

CREATE TABLE tableone (
firstname VARCHAR(20),
lastname CHAR(20), 
address TEXT,
age integer,
salary decimal(7, 2)
);


-- select all columns available in the tableone
SELECT * FROM tableone;

SELECT firstname, salary, age
FROM tableone;


-- character datatype --- varchar, char, text

-- Number---- integer, float, decimal    

-- datetime ---- time , date, datetime






INSERT INTO tableone 
VALUES ('olaitan', 'kazeem','10 lekki', 12, 627.23),
		('yemi', 'kola','12 berger', 23, 737.35),
		('olaitan', 'kazeem','10 lekki', 34, 233.36);
		


SELECT * FROM tableone;


INSERT INTO tableone(age, salary)
VALUES (27, 383.37),
		(21, 373.11);
		
		
-- delete..... truncate.... drop

DELETE FROM tableone
WHERE age=12;


delete from tableone;
TRUNCATE tableone;

SELECT * FROM tableone;




-- to delete the entire table
DROP TABLE tableone



/*
constrainst are set of rules applied to the columns to ensure data
 integrity
 
 
 1. Not null
 2. Unique
 3. Default
 4. check
 5. enum
 6. primary key
 7. foreign key
 8. Serial
 
*/


CREATE TABLE t1(
id integer,
firstname varchar(12)  NOT NULL
);

SELECT * FROM t1;

INSERT INTO t1 
VALUES(1, 'olaitan');


INSERT INTO t1 (firstname) 
VALUES( 'kazeem');

INSERT INTO t1 (id) 
VALUES(2);

--------------


CREATE TABLE t2(
id integer,
firstname varchar(12) unique
);

SELECT * FROM t2;

INSERT INTO t2 
VALUES(1, 'olaitan');


INSERT INTO t2 (firstname) 
VALUES('olaitan');

INSERT INTO t1 (id) 
VALUES(2);


-------
CREATE TABLE t3(
age integer,
states varchar(20) DEFAULT 'lagos'
);


INSERT INTO t3
VALUES (12, 'Kano'),
		(13, 'oyo');
		
SELECT * FROM t3;

INSERT INTO t3 (age)
VALUES (32 ),
		(56 );
		
		
---check
CREATE TABLE t4(
id integer,
age integer CHECK(age>=18)
);


INSERT INTO t4
values(1, 18);


CREATE TYPE brandname AS ENUM('Adidas', 'Gucci', 'Nike');


CREATE TABLE t5(
id integer,
"type of brand"  brandname
);


INSERT INTO t5
VALUES( 1, 'Nike');


----
CREATE TABLE t6(
id integer PRIMARY KEY,
age integer 
);

INSERT INTO t6
VALUES(1, 22),
	  (2, 34);
	  
	  
CREATE TABLE t7(
id integer PRIMARY KEY,
age integer,
grade integer PRIMARY KEY   --- INVALID WAY OF CREATING MULTIPLE PRIMARY KEY
);


CREATE TABLE t7(
id integer,
age integer,
grade integer ,
PRIMARY KEY (id, grade)   --- VALID WAY OF CREATINGMULTIPLE PRIMARY KEY 
);