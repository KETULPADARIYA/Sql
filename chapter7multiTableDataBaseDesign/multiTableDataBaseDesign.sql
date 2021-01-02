use gregs_list;


alter table my_contacts
add column interest1 VARCHAR(30),
add column interset2 VARCHAR(30),
add column interset3 VARCHAR(30),
add column interset4 VARCHAR(30);


update my_contacts
set interest1 = SUBSTRING_INDEX(interests,',',1);

--update my_contacts
--set interests = TRIM(RIGHT(intersets,LENGTH(interests)-LENGTH(interest1)-1;


UPDATE my_contacts SET interests = TRIM(RIGHT(interests,
(LENGTH(interests)-LENGTH(interest1) - 1)));



update my_contacts
set interset2 = SUBSTRING_INDEX(interests,',',1);

update my_contacts
set interests = TRIM(RIGHT(interests,LENGTH(interests)-LENGTH(interest2)-1));

update my_contacts
set interset3 = SUBSTRING_INDEX(interests,',',1);

update my_contacts
set interests = TRIM(RIGHT(interests,LENGTH(interests)-LENGTH(interset3)-1));

update my_contacts
set interset4 = interests;


select * from my_contacts
where gender = "F" and
      status = "Single" and
      seeking LIKE "%seeking M%" and
      birthday > "1950-03-20" and
      birthday < "1960-03-20" and
      (interest1="animals" or interest2="animals" or interest3="animals" or interest4="animals") and
      (interest1 = 'trading cards' or interest2 = 'trading cards'
      or interest3 = 'trading cards' or interest4 = 'trading cards') and
      (interest1='geocaching' or interest2='geocaching'
      or interest3='geocaching' or interest4='geocaching') ;

create table interests (
int_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
interest VARCHAR(50) NOT NULL,
contact_id INT NOT NULL,
CONSTRAINT my_contacts_contact_id_fk
FOREIGN KEY (contact_id)
REFERENCES my_contacts (contact_id)
);
+--------------------------+
| profession               |
+--------------------------+
| Accountant               |
| Actor /Actress           |
| Architect                |
| Astronomer               |
| Author                   |
| Baker                    |
| Bricklayer               |
| Bus driver               |
| Butcher                  |
| Carpenter                |
| Chef/Cook                |
| Cleaner                  |
| Dentist                  |
| Designer                 |
| Doctor                   |
| Dustman/Refuse collector |
| Electrician              |
| Engineer                 |
| Factory worker           |
| Farmer                   |
| Fireman/Fire fighter     |
| Fisherman                |
| Florist                  |
| Gardener                 |
| Hairdresser              |
| Journalist               |
| Judge                    |
| Lawyer                   |
| Lecturer                 |
| Librarian                |
| Lifeguard                |
| Mechanic                 |
| Punk                     |
+--------------------------+

create table toy_id_s (
    toy_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    toy VARCHAR(60) NOT NULL
);

insert  into toy_id_s values
( 5, 'whiffleball'),
( 6, 'frisbee'),
( 9, 'kite'),
( 12, 'yoyo');

drop table  boys;

create table boys
( boy_id INT AUTO_INCREMENT PRIMARY KEY,
 boy varchar(30),
 toy_id INT,
FOREIGN KEY (toy_id) REFERENCES toys(toy_id)
);

insert into boys values
(1 ,'Davey' ,3),
(2 ,'Bobby' ,5),
(3 ,'Beaver' ,2),
(4 ,'Richie' ,1);

select boys.boy,toys.toy
from boys inner join toys on boys.boy_id = toys.toy_id;


-- Query that returns the email addresses and professions of each person in my_contacts.
select mc.email,pf2.profession
from my_contacts as mc inner join profession2 as pf2
where mc.profession_id = pf2.profession_id;

select mc.email,pf2.profession from my_contacts natural join profession;


--Query that returns the first name, last name, and status of each person in my_contacts.
select mc.first_name, mc.last_nmae,s.status
from status as s inner join my_contacts as mc
where mc.contact_id = s.status_id;

select mc.first_name,mc.last_name,s.status form status natural join my_contacts;


-- Query that returns the first name, last name, and state of each person in my_contacts.
select first_name,last_nmae,state
from zip_code as z inner join my_contacts as mc
where z.zip_code = mc.zip_code;

select mc.first_name, mc.last_name,z.state from zip_code as z natural join my_contacts as mc;

-- non-equijoin
select boys.boy,toys.toy
from boys
inner join toys
on boys.boy_id <> toys.toy_id;

select boys.boy,toys.toy
from boys natural join toys;


-- Write two queries, each with a different join, to get the
-- matching records from my_contacts and contact_interest.
select me.first_name,me.last_name,ci.interest_id from my_contacts mc
inner join cotact_interest ci on mc.contact_id = ci.contact_id;

select me.first_name,me.last_name,ci.interest_id from my_contacts mc
natural  join cotact_interest ci ;

--Write a query to return all possible combinations of rows from contact_seeking and seeking.
select * from contact_seeking cross join seeking;
select * from contact_seeking , seeking;

-- Query that returns the first name, last name, and state of each person in my_contacts.
select mc.first_name,mc.last_name,z.state from my_contacts mc
inner join zip_code z On mc.zip_code = z.zip_code;