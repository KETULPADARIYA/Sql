sudo mysql -u root -p

use gregs_list;

-- create girls table
create table girls(
girl_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
girl VARCHAR(30) ,
toy_id INT NOT NULL ,
FOREIGN KEY (toy_id) REFERENCES  toys(toy_id)
);


-- insert values
insert  into girls  (girl_id,girl ,toy_id) values
(1, 'Jane', 3),
(2, 'Sally', 4),
(3, 'Cindy', 1);


-- select
select g.girl, t.toy
from girls g left outer join toys t
on g.toy_id = t.toy_id;

-- inner join
select g.girl, t.toy
from girls g inner join toys t
on g.toy_id = t.toy_id;

select g.girl, t.toy
from toys t left outer join girls g
on g.toy_id = t.toy_id;


-- add new values of toys

insert into toys
values
(6, 'tinker toys'),
(7, 'etch-a-sketch'),
(8, 'slinky');

--# right outer join
from t.toy,g.girl from toy t right outer join girls g ON t.toy_id == g.toy_id;


--Suppose you had identical tables, clown_info1 and clown_info2.
--Write a single join to get a table of results containing the name
--of each clown and the name of that clown’s boss.

select c1.name,c2.name  as boss
where clown_info1 as c1 inner join clown_info2 c2
on c1.boss_id = c2.id;


-- self join
--    FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId);

drop table clown_info1;
create table clown_info1(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    boss_id int
--    , forEIGN Key (boss_id) REFERENCES clown_info1(id)
);

insert into clown_info1 values
(1 ,'Elsie', 3),
(2 ,'Pickles', 5),
(3 ,'Snuggles', 10),
(4 ,'Mr. Hobo', 3),
(5 ,'Clarabelle', 10),
(6 ,'Scooter', 3),
(7 ,'Zippo', 3),
(8 ,'Babe', 5),
(9 ,'Bonzo', 5),
(10, 'Mister Sniffles' ,10);

select c1.name ,c2.name as boss
from clown_info1  c1
inner join  clown_info1 c2
on c2.boss_id= c1.id;


-- subqueries
select c1.name ,
( select name  from clown_info1 where c1.boss_id = id ) as boss
from clown_info1 as c1;


--List titles for jobs that earn salaries equal to the highest salary in the job_listings table.
SELECT title FROM job_listings
WHERE salary = (SELECT MAX(salary) FROM job_listings);


select title from job_listings
order by salary desc limit 1 ;

-- List the first and last name of people with a salary greater than the average salary.
SELECT mc.first_name, mc.last_name FROM my_contacts mc
NATURAL JOIN job_current jc WHERE jc.salary > (SELECT
AVG(salary) FROM job_current);


select mc.first_name,mc.last_name
from my_contacts mc natural  join job_current jc
where jc.salary >