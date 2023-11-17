-- comment/ statement

-- introduction to sql
/*
this
is
multple 
line 
comment
*/

/*
DDL: Dadta Defination Language------ CREATE, ALTER, DROP

DML: Data Manipulation language----- SELECT, DELETE, UPDATE, INSERT


DCL: Data Control language--- grant, revoke

*/

-- creating db
CREATE  DATABASE    
 `tolu`; 


-- to make db active
USE `classicmodels`;


DROP DATABASE `tolu`;


CREATE DATABASE lasop;

USE lasop;

CREATE TABLE student_info (

student_id integer,
firstname varchar(10),  -- ola
lastname char(10), -- ola         
address text,
department varchar(20) 
);

/*
character::; varchar, char, text
number ;;;;; integer  float, decimal
datetime :::::: time, date, datetime
*/




-- making query from the table 
SELECT * FROM student_info;

-- select specific columns from the table
SELECT student_id, address, lastname
FROM student_info;


-- inserting records to the table
INSERT INTO student_info()
VALUES(1, "yemi", "kemi", '10 lekki', "Chemistry"),
		(2, 'kola', 'Ada', '12 berger', "Electrical"),
        (3, 'smith', 'james', '34 olowoira', "civil"),
		(4, 'Rashford', 'sancho', 'agege', "physics"),
		(5, 'holar', 'Richael', '44 magodo', "chemical"),
		(6, 'kola', 'Ada', '12 berger', "Electrical");
        
        
SELECT * FROM student_info;

INSERT INTO student_info(firstname, department)
VALUES ("Ada", "Agric");


SELECT * FROM student_info;

/*
constrainst are set of rules impose on the columns to ensure data integrity

not null
default
check
unique
enum
priamry key
auto increment
foreign key
*/

CREATE TABLE T1 (
id int NOT NULL,
firstname varchar(10)
);

INSERT INTO T1()
VALUES(1, "KOLA");

SELECT * FROM T1;

INSERT INTO T1(firstname)
VALUES("yemi");




INSERT INTO T1(id)
VALUES(2);


CREATE TABLE t2(
firstname varchar(20),
state char(10) DEFAULT "lagos"
);

INSERT INTO t2(firstname, state)
VALUES ('KOLA', "KANO"),
		("YEMI", "KADUNA");
        
SELECT * FROM t2;

INSERT INTO t2(firstname)
VALUES ("olaitan"),
		("sancho");
        
   SELECT * FROM t2;     
   
   
   CREATE TABLE t3(
   firstname varchar(10),
   age int check(age>=18) );
   
   
   insert into t3()
   values ('olaitan', 24),
		('jame', 39);
        
        
        insert into t3()
   values ('olaitan', 12);
   
   
   select * from book;
   
   
    select`ship Mode`, count(city) from book
    group by 1
    order by 2 desc;
    
 select * from pets;
 
 drop table course_details;