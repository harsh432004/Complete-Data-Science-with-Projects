CREATE DATABASE sports;
USE sports;
CREATE TABLE cricket (
    player_id INT AUTO_INCREMENT,
    player_name CHAR(100) NOT NULL,
    player_role CHAR(100) NOT NULL,
    country CHAR(100) NOT NULL,
    PRIMARY KEY (player_id)
);

INSERT INTO cricket(player_name, player_role, country) 
VALUES
("Virat Kohli", "Batsman", "India"),
("ABD", "Wicketkeeper Batsman", "SouthAfrica"),
("Pollard", "All Rounder", "WestIndies"),
("Starc", "Bowler", "Australia"),
("Kane", "Batsman", "NewZealand");

select * from cricket;

CREATE TABLE football(
    player_id INT AUTO_INCREMENT,
    player_name CHAR(100) NOT NULL,
    player_role CHAR(100) NOT NULL,
    country CHAR(100) NOT NULL,
    PRIMARY KEY (player_id)
);

INSERT INTO football(player_name, player_role, country) 
VALUES
("Cristiano Ronaldo", "Forward", "Portugal"),
("Lionel Messi", "Forward", "Argentina"),
("Neymar Jr.", "Forward", "Brazil"),
("Robert Lewandowski", "Forward", "Poland"),
("Mohamed Salah", "Forward", "Egypt");

select * from football;

select player_role 
AS PR
from cricket
Where PR ="Batsman";

drop database sports;




