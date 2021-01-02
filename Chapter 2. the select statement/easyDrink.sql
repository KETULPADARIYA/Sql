create  table easy_drinks
(
    drink_name VARCHAR(50),
    main VARCHAR(30),
    amount1 DECIMAL(4,1),
    second VARCHAR(30),
    amount2 DECIMAL(4,1),
    directions BLOB
);


insert into easy_drinks values
( 'Blackthorn' ,'tonic water' ,1.5 ,'pineapple juice', 1 ,'stir with ice, strain into cocktail glass with lemon twist'),
('Blue Moon', 'soda' ,1.5 ,'blueberry juice' ,.75, 'stir with ice, strain into cocktail glass with lemon twist'),
('Oh My Gosh','peach nectar', 1 ,'pineapple juice', 1 ,'stir with ice, strain into shot glass'),
('Lime Fizz','Sprite', 1.5, 'lime juice' ,.75 ,'stir with ice, strain into cocktail glass'),
('Kiss on the Lips', 'cherry juice', 2, 'apricot nectar', 7, 'serve over ice with straw'),
('Hot Gold', 'peach nectar', 3, 'orange juice', 6, 'pour hot orange juice in mug and add peach nectar'),
('Lone Tree', 'soda' ,1.5, 'cherry juice', .75, "stir with ice, strain into cocktail glass"),
('Greyhound', 'soda', 1.5, 'grapefruit juice', 5, "serve over ice, stir well"),
('Indian Summer', 'apple juice' ,2, 'hot tea', 6, "add juice to mug and top off with hot tea"),
("Bull Frog" ,'iced tea' ,1.5, "lemonade" ,5, "serve over ice with lime slice"),
("Soda and It" ,'soda' ,2 ,"grape juice" ,1 ,"shake in cocktail glass, no ice");

--select statements
select  * from  easy_drinks where  main= 'Sprite';
--+------------+--------+---------+------------+---------+--------------------------------------------------------------------------------------+
--| drink_name | main   | amount1 | second     | amount2 | directions                                                                           |
--+------------+--------+---------+------------+---------+--------------------------------------------------------------------------------------+
--| Lime Fizz  | Sprite |     1.5 | lime juice |     0.8 | 0x737469722077697468206963652C2073747261696E20696E746F20636F636B7461696C20676C617373 |
--+------------+--------+---------+------------+---------+--------------------------------------------------------------------------------------+
--1 row in set (0.00 sec)

select  * from  easy_drinks where  main= 'Soda';
--+-------------+------+---------+------------------+---------+------------------------------------------------------------------------------------------------------------------------+
--| drink_name  | main | amount1 | second           | amount2 | directions                                                                                                             |
--+-------------+------+---------+------------------+---------+------------------------------------------------------------------------------------------------------------------------+
--| Blue Moon   | soda |     1.5 | blueberry juice  |     0.8 | 0x737469722077697468206963652C2073747261696E20696E746F20636F636B7461696C20676C6173732077697468206C656D6F6E207477697374 |
--| Lone Tree   | soda |     1.5 | cherry juice     |     0.8 | 0x737469722077697468206963652C2073747261696E20696E746F20636F636B7461696C20676C617373                                   |
--| Greyhound   | soda |     1.5 | grapefruit juice |     5.0 | 0x7365727665206F766572206963652C20737469722077656C6C                                                                   |
--| Soda and It | soda |     2.0 | grape juice      |     1.0 | 0x7368616B6520696E20636F636B7461696C20676C6173732C206E6F20696365                                                       |
--+-------------+------+---------+------------------+---------+------------------------------------------------------------------------------------------------------------------------+
--4 rows in set (0.00 sec)

select  * from  easy_drinks where  amount2= 6;
select  * from  easy_drinks where  amount2< '1';
--+------------+--------+---------+-----------------+---------+------------------------------------------------------------------------------------------------------------------------+
--| drink_name | main   | amount1 | second          | amount2 | directions                                                                                                             |
--+------------+--------+---------+-----------------+---------+------------------------------------------------------------------------------------------------------------------------+
--| Blue Moon  | soda   |     1.5 | blueberry juice |     0.8 | 0x737469722077697468206963652C2073747261696E20696E746F20636F636B7461696C20676C6173732077697468206C656D6F6E207477697374 |
--| Lime Fizz  | Sprite |     1.5 | lime juice      |     0.8 | 0x737469722077697468206963652C2073747261696E20696E746F20636F636B7461696C20676C617373                                   |
--| Lone Tree  | soda   |     1.5 | cherry juice    |     0.8 | 0x737469722077697468206963652C2073747261696E20696E746F20636F636B7461696C20676C617373                                   |
--+------------+--------+---------+-----------------+---------+------------------------------------------------------------------------------------------------------------------------+
--3 rows in set (0.01 sec)
select  * from  easy_drinks where  amount1< '1.5';
select  * from  easy_drinks where  amount1 = 1.0;
select  * from  easy_drinks where  main > 'Soda';
--+------------+-------------+---------+-----------------+---------+------------------------------------------------------------------------------------------------------------------------+
--| drink_name | main        | amount1 | second          | amount2 | directions                                                                                                             |
--+------------+-------------+---------+-----------------+---------+------------------------------------------------------------------------------------------------------------------------+
--| Blackthorn | tonic water |     1.5 | pineapple juice |     1.0 | 0x737469722077697468206963652C2073747261696E20696E746F20636F636B7461696C20676C6173732077697468206C656D6F6E207477697374 |
--| Lime Fizz  | Sprite      |     1.5 | lime juice      |     0.8 | 0x737469722077697468206963652C2073747261696E20696E746F20636F636B7461696C20676C617373                                   |
--+------------+-------------+---------+-----------------+---------+------------------------------------------------------------------------------------------------------------------------+
--2 rows in set (0.00 sec)

INSERT INTO my_contacts
VALUES
('Funyon','Steve','steve@onionflavoredrings.com',
'1970-04-01','M','Punk',"Grover's Mill, NJ",
'Single','smashing the state','compatriots,
guitar players');

select * from  my_contacts
where  location = 'Grover's Mill, NJ';
--    '> ';
--ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 's Mill, NJ';
--'' at line 2



select * from  my_contacts
where  location = 'Grover\'s Mill, NJ';

select * from  my_contacts
where  location = 'Grover''s Mill, NJ';


select drink_name,main,second from easy_drinks where  main = 'soda';
--+-------------+------+------------------+
--| drink_name  | main | second           |
--+-------------+------+------------------+
--| Blue Moon   | soda | blueberry juice  |
--| Lone Tree   | soda | cherry juice     |
--| Greyhound   | soda | grapefruit juice |
--| Soda and It | soda | grape juice      |
--+-------------+------+------------------+
--4 rows in set (0.00 sec)
