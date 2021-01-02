alter table my_contacts
add column phone VARCHAR(10) NOT NULL AFTER first_name;

create table projeckts (
    number int NOT NULL ,
    descriptionofproj VARCHAR(100) NOT NULL,
    contractoronjob  VARCHAR(30) NOT NULL
);

DESCRIBE projeckts;


insert into projeckts values
(1, 'outside house painting' ,'Murphy'),
(2, 'kitchen remodel' ,'Valdez'),
(3, 'wood floor installation' ,'Keller'),
(4, 'roofing' ,'Jackson');

-- give table to meaningful name
alter table projeckts
rename to project_list;

--we’ll change the column number to have a
--new name, proj_id, and set it to AUTO_INCREMENT. Then
--we’ll make it a
--primary key. It sounds complicated, but it really
--isn’t. In fact, you can do it all in just one command`
alter table project_list
change column number proj_id int ;

alter table project_list
change column proj_id proj_id int NOT NULL AUTO_INCREMENT,
add PRIMARY KEY (proj_id);

alter table project_list
change column     descriptionofproj proj_desc VARCHAR(100) NOT NULL,
change column    contractoronjob  con_name VARCHAR(30) NOT NULL;

--We still need to add in three more columns: a phone number, a start date,
--and an estimated cos
alter table project_list
add column phone_number VARCHAR(10) ,
add column start_date DATE ,
add column estimated_cost DECIMAL(7,2) ;



ALTER table project_list
drop column start_date;


create table hooptie (
    color varchar(20),
    year INT(4),
    make varchar(30),
    me  varchar(20),
    howmuchr DECIMAL(5,3)
);

ALTER table hooptie
modify  column howmuchr DECIMAL;

insert into hooptie values
('silver' ,1998, 'Porsche' ,'Boxter' ,1992.54)
,('NULL' ,2000, 'Jaguar' ,'XJ' ,15995)
,('red' ,2002, 'Cadillac' ,'Escalade' ,40215);

change column make after VIN,

ALTER  table hooptie
rename to car_table,
add column car_id INT NOT NULL AUTO_INCREMENT FIRST,
add PRIMARY KEY(car_id);

alter table car_table
add COLUMN `VIN` VARCHAR(30) AFTER car_id

alter table car_table
change column me model VARCHAR(20) AFTER make;

alter table car_table
MODIFY COLUMN color AFTER model,
modify  column color  after model;

alter table car_table
change column `year` before price;

alter table car_table
change column howmuchr price DECIMAL(7,2) ;

select RIGHT(location,2) from my_contacts;

select SUBSTRING_INDEX(location,',',1) from my_contacts;

select SUBSTRING('San Antonio, TX',5,3);

select upper('uSa');

select lower('spaGHEtti');
/
*/

update my_contacts
set state = RIGHT(location,2);

update my_contacts