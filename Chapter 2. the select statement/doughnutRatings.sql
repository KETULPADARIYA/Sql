create table doughnut_ratings (
    location VARCHAR(30),
    time TIME,
    date DATE,
    type VARCHAR(40),
    rating INT,
    comments VARCHAR(20)
);

insert into doughnut_ratings values
('Krispy King', '8:50', '2020/9/27', 'plain glazed', 10 ,'almost perfect')
,('Duncan’s Donuts', '8:59', '2020/8/25', NULL ,6, 'greasy')
,('Starbuzz Coffee', '19:35', '2020/5/24', 'cinnamon cake', 5 ,'stale, but tasty')
,('Duncan’s Donuts', '19:03', '2020/4/26', 'jelly ',7 ,'not enough jelly');

--1.plain glazed,2. No,3.No,4,plain glazed,NULL,"jelly 5. plain glazed , 6. NULL

insert into drink_info values
( 'Holiday', 0, 14,'yello', 'Y', 50),
('Dragon Breath', 2.9 , 7.2 ,'brown', 'N' ,NULL);


-- create table piggy bank
create table piggy_bank
(
    id int auto_increment NOT NULL PRIMARY KEY,
    coin CHAR(1) CHECK (coin in ('P','N',"D",'Q'))
);

select drink_name from drink_info where calories is null ;

-- wild cards
-- gives all columns which ends with CA
select * from my_contacts where location like '%CA';


-- %im = Ephraim,Slim,Tim
-- _im = kim,tim,Jim

-- where city LIKE "New %" -- New Jersey , New York;
-- where city Like "%a" -- Alabama,...;
-- where word LIKE 'Sp%';  Splendid ,Splendor;
-- where word LIKE '_i%';  Pineapple, Liver;

select drink_name from drink_info where calories >= 30 and calories <= 60;
select drink_name from drink_info where calories between  30 and 60;

--Rewrite the query on the previous page to SELECT all the names of
--drinks that have more than 60 calories or less than 30.
select drink_name from drink_info where calories <30 or calories > 60;

select drink_name from drink_info where drink_name between 'G' and 'P';


