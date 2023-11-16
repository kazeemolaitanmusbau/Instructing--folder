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