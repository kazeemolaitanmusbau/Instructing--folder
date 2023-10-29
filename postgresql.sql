/* Statement: is a set of instruction that we put together to achieve a 
		certain task on a database it can be read and understand by RDBMS*/
		
/* comment : is a text written by a programmer to illustrate what the statement
is doing, it can not be read and understand RDBMD 
*/


-- you can anything to illustrate your statement


-- How to create a database
CREATE DATABASE "WeekEnd Class";

-- create with if not exists commnad
CREATE DATABASE "ola";


/*
DDL: Data Defination Language
DML : Data Manipulation Language
DCL : Data Control Language
*/

-- how to create table
CREATE TABLE "table one" (

id INTEGER ,
first_name VARCHAR(5),
last_name CHAR(5),
address TEXT
);

-- TO SELECT ALL THE COLUMNS FROM A TABLE 
SELECT * FROM "table one";

-- how to select specific columns from a table
SELECT id, last_name FROM "table one";


-- inserting data/records to the table
INSERT INTO "table one"(id, first_name, last_name, address)
VALUES(1, 'ola', 'Ade', 'leki'),
		(2, 'yemi', 'Ada', 'berger'),
		(3, 'kemi', 'Dada', 'olowoira');
		
		
SELECT * FROM "table one";


-- delete.... truncate and drop

-- delete customer with id of 2

DELETE FROM "table one"
WHERE id=2;

-- to delete all the records in the table

DELETE FROM "table one";

TRUNCATE "table one";


-- to delete table completely from the database
DROP TABLE "table one";


/*
constraint in Sql

not null
default
unique
check
enum
serial
primary key
foreign key

*/


CREATE TABLE "first table"(
id integer,
firstname VARCHAR(12) NOT NULL
);

-- MAKE TO QUERY TO SEE THE VALUES IN FIRST TABLE
SELECT * FROM "first table";

INSERT INTO "first table"
VALUES (1, 'Olaitan');


INSERT INTO "first table"(firstname)
VALUES ( 'kazeem');


INSERT INTO "first table"(id)
VALUES (3);




CREATE TABLE "table two"(
id integer,
state varchar(12) DEFAULT 'Lagos'
);


SELECT * FROM "table two";

INSERT INTO "table two"
VALUES(1, 'Abuja'),
		(2, 'Kaduna');


INSERT INTO "table two"(id)
VALUES(3),
		(4 );
		
		
-- Unique

CREATE TABLE "table three"(
id integer,
brand varchar(12) UNIQUE
);

INSERT INTO "table three"
VALUES (1, 'Gucci'),
		(2, 'Nike'),
		(3, 'Adidas');
		
SELECT * FROM "table three";

INSERT INTO "table three"
VALUES (3, lower('ABA'));