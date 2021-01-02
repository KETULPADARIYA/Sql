create table movie_table (
    movie_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50),
    rating VARCHAR(2),
    drama  VARCHAR(1),
    comedy VARCHAR(1),
    action       VARCHAR(1),
          gore VARCHAR(1),
          scifi VARCHAR(1),
    for_kids VARCHAR(1),
    cartoon VARCHAR(1),
    purchased DATE,
    PRIMARY KEY(movie_id)
);


insert  into movie_table values
(1, "Monsters, Inc.", 'G' ,'F', 'T' ,'F' ,'F' ,'F' ,'T' ,'T', '2002/3/6'),
(2, "The Godfather", 'R' ,'F', 'F' ,'T' ,'T' ,'F' ,'F' ,'F', '2001/2/5'),
(3, "Gone with the Wind", 'G' ,'T', 'F' ,'F' ,'F' ,'F' ,'F' ,'F', '1999/11/20'),
(4, "American Pie", 'R' ,'F', 'T' ,'F' ,'F' ,'F' ,'F' ,'F', '2003/4/19'),
(5, "Nightmare on Elm Street", 'R' ,'F', 'F' ,'T' ,'T' ,'F' ,'F' ,'F', '2003/4/19'),
(6, "Casablanca" ,'PG' ,'T', 'F' ,'F' ,'F' ,'F' ,'F' ,'F', '2001/2/5');


insert into movie_table (title , rating , drama , comedy , action , gore , scifi , for_kids , cartoon ) values
("Big Adventure" ,"G" ,"F" ,"F" ,"F" ,"F" ,"F" ,"T" ,"F"),
("Greg: The Untold Story" ,"PG" ,"F" ,"F" ,"T" ,"F" ,"F" ,"F" ,"F"),
("Mad Clowns" ,"R" ,"F" ,"F" ,"F" ,"T" ,"F" ,"F" ,"F"),
("Paraskavedekatriaphobia" ,"R" ,"T" ,"T" ,"T" ,"F" ,"T" ,"F" ,"F"),
("Rat named Darcy, A" ,"G" ,"F" ,"F" ,"F" ,"F" ,"F" ,"T" ,"F"),
("End of the Line" ,"R" ,"T" ,"F" ,"F" ,"T" ,"T" ,"F" ,"T"),
("Shiny Things, The" ,"PG" ,"T" ,"F" ,"F" ,"F" ,"F" ,"F" ,"F"),
("Take it Back" ,"R" ,"F" ,"T" ,"F" ,"F" ,"F" ,"F" ,"F"),
("Shark Bait" ,"G" ,"F" ,"F" ,"F" ,"F" ,"F" ,"T" ,"F"),
("Angry Pirate" ,"PG" ,"F" ,"T" ,"F" ,"F" ,"F" ,"F" ,"T"),
("Potentially Habitable Planet" ,"PG" ,"F" ,"T" ,"F" ,"F" ,"T" ,"F" ,"F");

update movie_table set category = "drama" where drama = "T";
update movie_table set category = "comedy" where comedy = "T";
update movie_table set category = "action" where action = "T";
update movie_table set category = "horror" where gore = "T";
update movie_table set category = "scifi" where scifi = "T";
update movie_table set category = "family" where for_kids = "T";
update movie_table set category = "family" where cartoon = "T" and rating = "G";
update movie_table set category = "MISC" where cartoon = "T" and rating = "PG";


 alter table movie_table
 add column category VARCHAR(20);

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


update movie_table
set category =
case
    when drama = "T" then 'drama'
    when comedy = "T" then 'comedy'
    when action = "T" then 'action'
    when gore = "T" then 'horror'
    when scifi = "T" then 'scifi'
    when for_kids = "T" then 'family'
    when cartoon = "T" and rating = "G" then 'family'
    else 'misc'
end ;


update movie_table
set category =
case
    when drama = "T" and rating = "R" then 'drama-r'
    when comedy = "T" and rating = "R" then 'comedy-r'
    when action = "T" and rating = "R" then 'action-r'
    when gore = "T" and rating = "R" then 'horror-r'
    when scifi = "T" and rating = "R" then 'scifi-r'
    when cartoon = "T" and rating = "G" then 'family'
end ;

update movie_table
set category =
case
    when category = 'drama-r' then 'drama'
    when category = 'comedy-r' then 'comedy'
    when category = 'action-r' then 'action'
    when category = 'horror-r' then 'horror'
    when category = 'scifi-r' then 'scifi'
end;

alter table movie_table
drop column drama,
drop column comedy,
drop column action,
drop column scifi,
drop column cartoon,
drop column for_kids,
drop column gore;

insert into movie_table values
(83, 'Big Adventure' ,'G' , '2002/3/6','family'),
(84, 'Greg: The Untold Story' ,'PG' , '2001/2/5','action'),
(85, 'Mad Clowns' ,'R' , '1999/11/20','horror'),
(86, 'Paraskavedekatriaphobia' ,'R' , '2003/4/19','action'),
(87, 'Rat named Darcy, A' ,'G' , '2003/4/19','family'),
(88, 'End of the Line' ,'R' , '2001/2/5','misc'),
(89, 'Shiny Things, The' ,'PG' , '2002/3/6','drama'),
(90, 'Take it Back' ,'R' , '2001/2/5','comedy'),
(91, 'Shark Bait' ,'G' , '1999/11/20','misc'),
(92, 'Angry Pirate' ,'PG' , '2003/4/19','misc'),
(93, 'Potentially Habitable Planet' ,'PG' , '2001/2/5','scifi'),
(94, 'Cows Gone Wild' ,'R' , '2007/3/19','horror');

alter table movie_list change categoy category varchar(30) fifth;


create table sim ( ch CHAR(1) );

insert  into sim  values ('0'), ('1'), ('2'), ('3'), ('A'), ('B'), ('C');
 insert  into sim  values  ('D'), ('a'), ('b'), ('c'), ('d'), ('!'), ('@'), ('#'), ('$'), ('%'), ('^'), ('&'), ('*'), ('('), (')'), ('-'), ('_'), ('+'), ('='), ('['), (']'), ('{'), ('}');
insert  into sim  values   (';'), (':'), ('|'), ('~');

 (','), ('.') ('<'), ('>'), ('/'), ('?'), (' ');
('0'), ('1'), ('2'), ('3'), ('A'), ('B'), ('C'), ('D'), ('a'), ('b'), ('c'), ('d'), ('!'), ('@'), ('#'), ('$'), ('%'), ('^'), ('&'), ('*'), ('('), (')'), ('-'), ('_'), ('+'), ('='), ('['), (']'), ('{'), ('}'), (';'), (':'), ('''), ('"'), (''), ('|'), ('`'), ('~'), (','), ('.'), ('<'), ('>'), ('?'), (' ');

select title,category from movie_table where title like 'A%' and category = 'family' order by title;

select title,category from movie_table where category = 'family' order by title;

select * from sim order by ch;

select title,category,purchased from movie_table


select title,category,purchased from movie_table order by  category,purchased;
select title,category,purchased from movie_table order by category,purchased,title;

select category,purchased,title from movie_table order by category,purchased,title DESC;

select category,purchased,title from movie_table order by purchased DESC,title ASC;


create table cookie_sales (
    ID int not null AUTO_INCREMENT,
    first_name VARCHAR(30),
    sales DECIMAL(5,3),
    sales_date DATE,
    PRIMARY KEY(ID)
);


insert into cookie_sales  values
( 1, 'Lindsay', 32.02 ,'2007/3/6'),
( 2, 'Paris', 26.53 ,'2007/3/6'),
( 3, 'Britney', 11.25 ,'2007/3/6'),
( 4, 'Nicole', 18.96 ,'2007/3/6'),
( 5, 'Lindsay', 9.16 ,'2007/3/7'),
( 6, 'Paris', 1.52 ,'2007/3/7'),
( 7, 'Britney', 43.21 ,'2007/3/7'),
( 8, 'Nicole', 8.05 ,'2007/3/7'),
( 9, 'Lindsay', 17.62 ,'2007/3/8'),
( 10, 'Paris', 24.19 ,'2007/3/8'),
( 11, 'Britney', 3.40 ,'2007/3/8'),
( 12, 'Nicole', 15.21 ,'2007/3/8'),
( 13, 'Lindsay', 0 ,'2007/3/9'),
( 14, 'Paris', 31.99 ,'2007/3/9'),
( 15, 'Britney', 2.58 ,'2007/3/9'),
( 16, 'Nicole', 0 ,'2007/3/9'),
( 17, 'Lindsay', 2.34 ,'2007/3/10'),
( 18, 'Paris', 13.44 ,'2007/3/10'),
( 19, 'Britney', 8.78 ,'2007/3/10'),
( 20, 'Nicole', 26.82 ,'2007/3/10'),
( 21, 'Lindsay', 3.71 ,'2007/3/11'),
( 22, 'Paris', .56 ,'2007/3/11'),
( 23, 'Britney', 34.19 ,'2007/3/11'),
( 24, 'Nicole', 7.77 ,'2007/3/11'),
( 25, 'Lindsay', 16.23 ,'2007/3/12'),
( 26, 'Paris', 0 ,'2007/3/12'),
( 27, 'Britney', 4.50 ,'2007/3/12'),
( 28, 'Nicole', 19.22 ,'2007/3/12');


select first_name,sales from cookie_sales
order by sales DESC;

select sum(sales) from cookie_sales where first_name ="Nicole";

SELECT first_name,SUM(sales)
FROM cookie_sales
GROUP BY first_name;
+------------+------------+
| first_name | SUM(sales) |
+------------+------------+
| Lindsay    |     81.080 |
| Paris      |     98.230 |
| Britney    |    107.910 |
| Nicole     |     96.030 |
+------------+------------+

SELECT first_name,SUM(sales)
FROM cookie_sales
GROUP BY first_name;
ORDER BY SUM(sales)DESC;

SELECT  first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC;
+------------+------------+
| first_name | SUM(sales) |
+------------+------------+
| Britney    |    107.910 |
| Paris      |     98.230 |
| Nicole     |     96.030 |
| Lindsay    |     81.080 |
+------------+------------+

select first_name, AVG(sales)
from cookie_sales
group by first_name;


select first_name, AVG(sales)
from cookie_sales
group by first_name
order by AVG(sales);

select first_name, MAX(sales)
from cookie_sales
group by first_name
order by MAX(sales);


select first_name, MIN(sales)
from cookie_sales
group by first_name
order by MIN(sales);


SELECT COUNT(sales_date)
FROM cookie_sales;


select first_name,COUNT(sales_date)
FROM cookie_sales
where sales > 0
GROUP BY first_name
ORDER BY COUNT(sales_date) DESC;

select first_name,COUNT(sales_date)
FROM cookie_sales
where sales > 0
GROUP BY first_name
ORDER BY COUNT(sales_date) DESC;

SELECT DISTINCT sales_date
FROM cookie_sales
ORDER BY sales_date;

SELECT COUNT(DISTINCT sales_date)
FROM cookie_sales;

select first_name,SUM(sales) from cookie_sales
group by first_name
order by SUM(sales)
Limit 2;

select first_name,SUM(sales) from cookie_sales
group by first_name
order by SUM(sales) DESC
Limit 2;

select first_name,SUM(sales) from cookie_sales
group by first_name
order by SUM(sales) DESC
Limit 1,1;

alter table my_contacts
add column interest1 VARCHAR(30),
add column interset2 VARCHAR(30),
add column interset3 VARCHAR(30),
add column interset4 VARCHAR(30);

update

create table interests (
int_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
interest VARCHAR(50) NOT NULL,
contact_id INT NOT NULL,
CONSTRAINT my_contacts_contact_id_fk
FOREIGN KEY (contact_id)
REFERENCES my_contacts (contact_id)
);
