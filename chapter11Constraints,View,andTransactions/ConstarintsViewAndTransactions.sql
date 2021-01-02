--gets the prof_id from the profession table
select prof_id from professions where profession == "teacher";


--He gets the status_id from the status table
select status_id from status where status ='single';



--inserts these values and uses X for gender
INSERT INTO my_contacts VALUES('', 'Murphy', 'Pat',
'5551239', 'patmurphy@someemail.com', 'X', 1978-04-15,
19, '10087', 3);

--Flash forward three months
-- females count
select count(*) from my_contants where gender= "F";
Females
5975

--males count .
SELECT COUNT(*) AS Males FROM my_contacts WHERE gender = 'M';
Males
6982

-- total
SELECT COUNT(*) AS Total FROM my_contacts;
Total
12970

-- extra
select gender from my_contacts where gender <> 'M' and gender <> 'F';
gender
X
X
X
X
X
X
X
X
X
X
X
X
X
X

-- create piggy bank
create table piggy_bank
(
    id int auto_increment NOT NULL PRIMARY KEY,
    coin CHAR(1) CHECK (coin in ('P','N',"D",'Q'))
);


-- checking the gender
create table my_contacts
add CONSTRAINT CHECK gender in {"M","F"};


from mc.first_name,mc.last_name,mc.email.mc.phone
from my_contacts mc natural join job_desire as jd
where jd.title = "Web Designer";

--Write another query
--to find open positions for
--technical writers.
SELECT title, salary, description, zip
FROM job_listings
WHERE title = ‘Technical Writer’;


--
create view job_raises as jr
select mc.first_name,mc.last_name,mc.email,mc.phone,jc.contact_id,jc.salary,jd.salary_low,
jd.salary_low - jc.salary as raise
from job_current as jc
inner join job_desired as jd
inner join my_contacts as mc
where jc.contact_id = jd.contact_id
and jc.cotact_id = mc.contact_id;


select * from job_raises order by last_name;


create table piggy_bank
(
    id int auto_increment not null primary key,
    coin char(1) not null,
    coin_year int
);


insert into piggy_bank
values
(1 ,'Q' ,1950),
(2 ,'P' ,1972),
(3 ,'N' ,2005),
(4 ,'Q' ,1999),
(5 ,'Q' ,1981),
(6 ,'D' ,1940),
(7 ,'Q' ,1980),
(8 ,'P' ,2001),
(9 ,'D' ,1926),
(10 ,'P' ,1999);

--Let’s write a view that only shows us rows containing quarters:
create  view  pb_quarters as
select * from piggy_bank
where coin = 'Q';

create view pb_dimes as
select * from piggy_bank
where coin = "D" with check option ;


select * from pb_quarters;
select * from pb_dimes;

insert into pb_quarters values (11,'Q',1983);

insert into pb_quarters values (12,'D',1942);

insert into pb_dimes values (13,'Q',2005);

delete  from pb_quarters where coin = 'D' or coin = 'N' or coin = 'P';

update pb_quarters set coin = 'Q' where coin = 'P';

select * from piggy_bank;

-- too see tables
show tables ;
show create table my_contacts;
-- in the last we can see ENGINE= MyISAM

--# Too use transactions , engine must be InnoDB and BDB. because they can store data behind the scene
-- Too change the type of the table
-- use
alter table your_table type = InnoDB;
-- the Classic aCID test :
--ATOMICITY all step must be completed
--CONSISTENCY  : if any thing happen in the process the transaction stores data as it is as it is at start
-- ISOLATION : every transaction has consistence view of database regardless of other
--             transaction taking place at the same time
-- DURABILITY: save correctly and secured.

-- start transaction, commit, rollBack

START TRANSACTION
select * from piggy_bank;
update piggy_bank set coin = 'Q' where coin 'F';
select * from piggy_bank; -- see the change if is wrong then rollback other

rollback ;
or
COMMIT;

select * from piggy_bank;

Q:  Can I just use START TRANSACTION so that I can try
out some queries?
-- yes, it is good practise to perform the query which affects data base in transaction.

-- after start transaction command
-- transaction write log of the commands
-- it helps to rollback and commit;

START TRANSACTION;
UPDATE piggy_bank set coin = 'Q' where coin = 'P'
AND coin_year < 1970;
COMMIT;
--see queries on 492 page
