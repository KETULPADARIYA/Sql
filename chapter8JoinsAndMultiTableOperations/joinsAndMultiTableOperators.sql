sudo mysql -u root -p

use grags_list;

--Write queries that can retrieve the status , profession , interests , and
--seeking values from the old my_contacts table, without producing
--any duplicates.
select status from my_contacts group by status order by status;
+------------+
| status     |
+------------+
| not_single |
| single     |
+------------+
2 rows in set (0.00 sec)

select profession from my_contacts group by profession order by profession;

select seeking from my_contacts group by seeking order by seeking;


SELECT interests
FROM my_contacts
GROUP BY interests
ORDER BY interests;

alter table my_contacts
add interest1 VARCHAR(20),
add interest2 VARCHAR(20),
add interest3 VARCHAR(20),
add interest4 VARCHAR(20);

# 3 ways to create profeession table out of the profession column
create table profession1
(
    profession_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    profession VARCHAR(20)
);
insert into profession1(profession)
select profession from my_contacts
group by profession
order by profession

update my_contacts
set interest1 = SUBSTRING_INDEX(interests,',',1);

update movie_table
set category =
case
    when drama = "T" then 'drama'
    when comedy = "T" then 'comedy'
    when action = "T" then 'action'
    when gore = "T" then 'horror'
    when scifi = "T" then 'scifi'
    when for_kids = "T" then 'family'
    when cartoon = "T" then 'family'
    else 'misc'
end ;

update my_contacts
set profession =
case

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

alter table my_contacts
add column profession1 VARCHAR(30);


update my_contacts
set profession =
case
   when profession = 'Accountant' then 'developer'
   when profession = 'Architect' then 'lawyer'
   when profession = 'Astronomer' then 'lawyer'
   when profession = 'Author' then 'teacher'
   when profession = 'Baker' then 'lawyer'
   when profession = 'Bricklayer' then 'developer'
   when profession = 'Bus driver' then 'banker'
   when profession = 'Butcher' then 'developer'
   when profession = 'Carpenter' then 'lawyer'
   when profession = 'Cleaner' then 'banker'
   when profession = 'Dentist' then 'developer'
   when profession = 'Designer' then 'programmer'
   when profession = 'Doctor' then 'teacher'
   when profession = 'Electrician' then 'developer'
   when profession = 'Engineer' then 'programmer'
   when profession = 'Factory worker' then 'developer'
   when profession = 'Farmer' then 'programmer'
   when profession = 'Fireman/Fire fighter' then 'teacher'
   when profession = 'Fisherman' then 'developer'
   when profession = 'Florist' then 'developer'
   when profession = 'Gardener' then 'developer'
   when profession = 'Hairdresser' then 'developer'
   when profession = 'Journalist' then 'programmer'
   when profession = 'Judge' then 'teacher'
   when profession = 'Lawyer' then 'teacher'
   when profession = 'Lecturer' then 'programmer'
   when profession = 'Librarian' then 'banker'
   when profession = 'Lifeguard' then 'teacher'
   when profession = 'Mechanic' then 'banker'
   when profession = 'Punk' then 'lawyer'
   else "programmer"
end;


select profession from my_contacts
group  by profession
order by profession;


insert into profession1(profession)
select profession from my_contacts
group  by profession
order by profession;

create table profession3
( profession_id int not null AUTO_INCREMENT PRIMARY KEY,
 profession VARCHAR (20)
 ) as select profession from my_contacts
group  by profession
order by profession;



select * from profession3;


create table profession4
as select profession from my_contacts
group  by profession
order by profession;

alter table profession4
add column profession_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

select * from profession4;

-- aliases
select profession as prof_from_contacts from my_contacts
group  by prof_from_contacts
order by prof_from_contacts;

select profession  prof_from_contacts from my_contacts
group  by prof_from_contacts
order by prof_from_contacts;


-- Everything we wanted to know about the inner joins
create table toys
(toy_id int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
 toy VARCHAR(20))
;

create table boys
(boy_id int not null auto_increment primary key,
boy VARCHAR(30));


insert into toys
values
(1, 'hula hoop'),
(2, 'balsa glider'),
(3, 'toy soldiers'),
(4, 'harmonica'),
(5, 'baseball cards');

insert into boys
values
( 1, "Davey"),
(2, "Bobby"),
(3, "Beaver"),
(4, "Richie");


select t.toy,b.boy
from toys as t
cross join boys as b;