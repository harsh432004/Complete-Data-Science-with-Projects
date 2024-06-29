CREATE DATABASE test; 
-- DROP DATABASE test;
CREATE TABLE harsh;
CREATE TABLE employee(
						name char(10),
                        salary int,
                        phone int(10),
                        email varchar(100),
                        department char
                        );
create table employee1 as select salary, department from employee;

-- drop ->Delete the existing table
-- Syntax: drop table tablename;
drop table employee1;

-- truncate -> delete all data inside table but dosnt delete data itself
-- syntax -> truncate table tablename;
truncate table employee1;
desc employee;

-- update-> Alter the table
-- 1. add the column in table 
-- Syntax: Alter table tablename;
-- add col_name datatype(max)
alter table employee 
add maritial_status char;

-- 2. Delete the column in table 
-- Syntax: Alter table tablename;
-- drop col_name datatype(max)
alter table employee 
drop maritial_status;

-- 3. change  the datatype of that column in table 
-- Syntax: Alter table tablename;
-- drop col_name datatype(max)
alter table employee 
drop maritial_status;

-- Syntax: Alter table tablename;
-- modify column col_name datatype(max)

Alter table employee
modify column salary varchar(100);

CREATE database cartoon;
USE cartoon;
create table doremon(
			iD int,
			name char,
            address varchar(100),
            age int            
);

DROP table doremon;

-- SYNTAX for Constrains 
-- CREATE TABLE table_name(
-- col1 datatype constrain,
-- col2 datatype constrain,
-- col3 datatype constrain,
-- )

create table doremon(
			iD int NOT NULL,
			name char,
            address varchar(100),
            age int            
);

Alter table doremon
Modify column name char not null;

Alter table doremon
Modify column age char NOT NULL UNIQUE;

-- for oracle db
create table shinchan(
			iD int NOT NULL UNIQUE,
			name char,
            address varchar(100),
            age int            
);

-- for mysql workbench
create table shinchan(
			iD int NOT NULL,
			name char,
            address varchar(100),
            age int,
            primary key (id, name,address, age)
);

-- Primary = Unique + NOT NULL
-- A table can have multiple unique constrain but only 1 primary key

-- PK for single field
Alter table shinchan
Add primary key (age);

-- PK for multiple field
Alter table shinchan
Add Constraint SHINPR primary key (age, address, Name );

Drop table doremon;
Drop table shinchan;

-- Data -> Rows 
Create table employee(
		id int,
        name char,
        salary int not null,
        Experience int not null,
        primary key (ID)
);

-- Insert
Insert into employee(name, id, salary, experience)
Values("Harsh",1,100,2);

alter table employee
modify column name char(100);

SELECT * FROM employee;


Insert into employee(name, id, salary, experience)
Values("Harsh",1,10000,2);
Insert into employee(name, id, salary, experience)
Values("Sachin",2,1000000,2);
Insert into employee(name, id, salary, experience)
Values("Vaishali",3,50000,2);
Insert into employee(name, id, salary, experience)
Values("Bhupendra",4,10000,2);
Insert into employee(name, id, salary, experience)
Values("Charu",5,7000,2);
Insert into employee(name, id, salary, experience)
Values("Surya",6,1000,2);
Insert into employee(name, id, salary, experience)
Values("Bhuvan",7,1000,2);

Insert into employee(name, id, salary, experience)
Values("Labdhi",8,1000,4);

Insert into employee(name, id)
Values(9,"Hitesh");

SELECT * from employee;
SELECT name, salary from employee
SELECT name, salary from employee

Select distinct experience from employee;

Select salary from employee
where salary>100

>,<, >=, <=, =, != or <>, between, like

Text values should always have quotes

AND, OR, Not <- operators

UPDATE employee
set name = "Khushi"
where id = 8;

-- constrains -> NOT NULL, UNIQUE, PR
-- TABLE ->
C -> Create a data -> insert into
R -> select *(all) col from table_name, where,
And, OR, NOT, BETWEEN, LIKE, DISTINCT
U-> UPDATE THE DATA
D-> DELETE THE DATA
