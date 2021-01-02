sudo mysql -u root -p

use gregs_list;

create table fish_info(
    common VARCHAR(30),
    species VARCHAR(30),
    location VARCHAR(90),
    weight VARCHAR(50)
);

insert into fish_info values
('bass, largemouth', 'M. salmoides', 'Montgomery Lake, GA' ,'22 lb 4 oz'),
('walleye' ,'S. vitreus' ,'Old Hickory Lake, TN' ,'25 lb 0 oz'),
('trout, cutthroat' ,'O. Clarki' ,'Pyramid Lake, NV' ,'41 lb 0 oz'),
('perch, yellow' ,'P. Flavescens' ,'Bordentown, NJ' ,'4 lb 3 oz'),
('bluegill' ,'L. Macrochirus' ,'Ketona Lake, AL' ,'4 lb 12 oz'),
('gar, longnose' ,'L. Osseus' ,'Trinity River, TX' ,'50 lb 5 oz'),
('crappie, white' ,'P. annularis' ,'Enid Dam, MS' ,'5 lb 3 oz'),
('pickerel, grass' ,'E. americanus' ,'Dewart Lake, IN' ,'1 lb 0 oz'),
('goldfish' ,'C. auratus' ,'Lake Hodges, CA' ,'6 lb 10 oz'),
('salmon, chinook' ,'O. Tshawytscha' ,'Kenai River, AK' ,'97 lb 4 oz');


create table fish_records(
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    common VARCHAR(30),
    location VARCHAR(90),
    state VARCHAR(2),
    weight VARCHAR(50),
    date DATE
);

insert into fish_records values
('George', 'Perry', 'bass, largemouth', 'Montgomery Lake' ,'GA' ,'22 lb 4 oz', '1932-2-6'),
('Mabry', 'Harper', 'walleye', 'Old Hickory Lake' ,'TN' ,'25 lb 0 oz', '1960-8-2'),
('John', 'Skimmerhorn', 'trout, cutthroat', 'Pyramid Lake' ,'NV' ,'41 lb 0 oz', '1925-12-1'),
('C.C.', 'Abbot', 'perch, yellow', 'Bordentown' ,'NJ' ,'4 lb 3 oz', '1865-5-1'),
('T.S.', 'Hudson', 'bluegill', 'Ketona Lake' ,'AL' ,'4 lb 12 oz', '1950-4-9'),
('Townsend', 'Miller', 'gar, longnose', 'Trinity River' ,'TX' ,'50 lb 5 oz', '1954-7-3'),
('Fred', 'Bright', 'crappie, white', 'Enid Dam' ,'MS' ,'5 lb 3 oz', '1957-7-3'),
('Mike', 'Berg', 'pickerel, grass', 'Dewart Lake' ,'IN' ,'1 lb 0 oz', '1990-6-9'),
('Florentino', 'Abena', 'goldfish', 'Lake Hodges' ,'CA' ,'6 lb 10 oz', '1996-4-1'),
('Les', 'Anderson', 'salmon, chinook', 'Kenai River' ,'AK' ,'97 lb 4 oz', '1985-5-1');


--Write a query for each table to find
--all records from New Jersey.
select * from fish_info where location like '%NJ';
select * from fish_records where state = 'NJ';


-- too copy and paste the data of created table
--we can use
show create table my_contacts;


CREATE TABLE `my_contacts` (
   contact_id INT NOT NULL AUTO_INCREMENT,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `gender` char(1) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `location` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL,
  `interests` varchar(100) NOT NULL,
  `seeking` varchar(100) NOT NULL,
  PRIMARY KEY (contact_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

create table my_table(
    id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO my_table (id, first_name, last_name)
VALUES (NULL, 'Marcia', 'Brady');
INSERT INTO my_table (id, first_name, last_name)
VALUES (1, 'Jan', 'Brady');
INSERT INTO my_table
VALUES (2, 'Bobby', 'Brady');
INSERT INTO my_table (first_name, last_name)
VALUES ('Cindy', 'Brady');
INSERT INTO my_table (id, first_name, last_name)
VALUES (99, 'Peter', 'Brady');

alter table my_contacts
    add column contact_id INT NOT NULL AUTO_INCREMENT FIRST,
    add PRIMARY KEY (contact_id);