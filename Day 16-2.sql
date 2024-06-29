CREATE DATABASE company;
USE company;
drop table employee;

CREATE TABLE employee (
    EID INT AUTO_INCREMENT,
    ENAME CHAR(100) NOT NULL,
    CITY CHAR(50) NOT NULL,
    PRIMARY KEY (EID)
);

CREATE TABLE department (
    DID INT AUTO_INCREMENT,
    DNAME CHAR(100) NOT NULL,
    EID INT,
    PRIMARY KEY (DID)  
);

insert into employee(ENAME, CITY)
values
("Harsh", "Vadodara"),
("Sachin", "Mumbai"),
("Vaishali", "Delhi"),
("Charu", "Indore"),
("Bhupendra", "Kashmir");

insert into department(DNAME, EID)
values
("HR", 5),
("CSE", 2),
("Sales", 3),
("Marketing", 4),
("PR", 1),
("IT", 6),
("R&D", 7);

-- Inner Join
Syntax - 
select col_name(s)
FROM table_1
INNER JOIN table_2
ON table_1.col_name = table_2.col_name;

select * from employee
INNER JOIN department 
ON employee.EID = department.EID;

-- LEFT JOIN & Left Inner Join
select * from employee
LEFT JOIN department 
ON employee.EID = department.EID,
Where CITY = "Vadodara";

-- Right Join
select employee.EID, employee.CITY from employee
Right JOIN department 
ON employee.EID = department.EID;

INSERT INTO employee(ENAME, CITY)
values ("Tony", "CD");

-- Full Outer join - Union of Left Outer join and Right Outeer Join
(select * from employee
Left JOIN department 
ON employee.EID = department.EID)
UNION
 (select * from employee
Right JOIN department 
ON employee.EID = department.EID)

 select * 
from department
Left JOIN employee 
ON employee.EID = department.EID;

SELECT *
FROM department
LEFT JOIN employee ON employee.EID = department.EID;

