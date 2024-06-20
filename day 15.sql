drop database test;
create database university;
use university;
create table harsh(
	id int auto_increment,
    name char(100) NOT NULL,
    age int,
    Email varchar(100) UNIQUE,
    mark float not null,
    primary key(id)
);

insert into harsh(name, age, email, mark)
values
("Noody",20,"nody@gmail.com",30),
("Oggy",44,"oggy@gmail.com",100),
("Sinchan",20,"sinchan@gmail.com",60),
("Doremon",20,"doremon@gmail.com",50),
("Hagemaru",20,"hagemaru@gmail.com",70); 

select * from harsh

where mark >= 60;
 
 -- Syntax for deleting the existing data
 SET SQL_SAFE_UPDATES=0;
 delete from compsc
 where mark = 70;
 
 -- order by (sort)
--  Asce or Desc
--  
--  Syntax for sorting
--  SELECT col
--  from table compsc
--  order by col_name

-- for ascending 
Select mark
from compsc
order by mark;
 
 -- for descending
Select *
from compsc
order by mark, name;

Select *
from compsc
order by mark desc, name desc;

Select *
from compsc
order by age desc, email asc;

-- Syntax for max
-- syntax: max (col_name)
from table_name;

select min(mark)
from compsc;

select * from compsc
order by mark, name;

select * from compsc
order by mark desc, name asc;

-- Max and Min
-- syntax- max(col_name) from table_name;

select min(mark)
from compsc;

select max(name)
from compsc;

select min(mark)
from compsc
where mark > 70

select min(mark)
from compsc

-- count
select count(mark)
from harsh
where age>20;

	select avg(Age)
	from compsc
	where mark>50; 

select * from compsc;
where mark between 20 and 30;

select sum(mark)
from compsc;

select * from compsc
where mark between 20 and 30;

-- Between
select SUM(mark) from compsc
where mark between 20 and 30;

select * from compsc
where mark between 20 and 30;

select SUM(mark) from compsc
where age > 0 and mark < 100;

insert into compsc(name, age, email, mark)
values
("Noddy",20,"noddy@yahho.com",30),
("oswal",44,"oswal@zoho.com",100),
("Pingu",20,"pingu@rediffmail.com",60),
("bob",20,"bob@outlook.com",50),
("Mojo",20,"mojo@jojo.com",70); 

select * from compsc
where email like 'n%m';





