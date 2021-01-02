create  table black_book (
    date_name VARCHAR(20),
    rating VARCHAR(20)
);

insert into black_book values
( 'Alex', 'innovative' )
,( 'James', 'boring' )
,( 'Ian', 'fabulous' )
,( 'Boris', 'ho' )
,( 'Melvin', 'plebian' )
,( 'Eric', 'pathetic' )
,( 'Anthony', 'delightful' )
,( 'Sammy', 'pretty' )
,( 'Ivan', 'dismal' )
,( 'Vic', 'ridiculous' );


 select drink_name from drink_info WHERE not carbs between 3 and 5;
select date_name from black_book where not date_name like "A%" and not date_name like 'B%';

select * FROM easy_drinks where not main is null;
select * from easy_drinks where not main = 'soda' and not main = 'iced tea';


SELECT drink_name from easy_drinks
WHERE NOT amount1 < 1.50;
SELECT drink_name from easy_drinks
WHERE amount1 > 1.50;



SELECT drink_name FROM drink_info
WHERE NOT ice = 'Y';
select drink_name from drink_info
where ice <> 'Y';


SELECT drink_name FROM drink_info
WHERE NOT calories < 20;
SELECT drink_name FROM drink_info
WHERE  calories >= 20;



SELECT drink_name FROM easy_drinks
WHERE main IN ('peach nectar', 'soda');

SELECT drink_name FROM easy_drinks
WHERE main between  'p' and  't';


SELECT drink_name FROM drink_info
WHERE NOT calories = 0;
SELECT drink_name FROM drink_info
WHERE  calories <> 0;



SELECT drink_name FROM drink_info
WHERE NOT carbs BETWEEN 3 AND 5;

SELECT drink_name FROM drink_info
WHERE carbs < 3 or  carbs > 5;




SELECT date_name from black_book
WHERE NOT date_name LIKE 'A%'
AND NOT date_name LIKE 'B%';

SELECT date_name from black_book
WHERE NOT date_name between  'A' and 'C';
