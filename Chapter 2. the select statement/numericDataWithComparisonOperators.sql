create  table drink_info (
drink_name VARCHAR(30) NOT NULL,
 cost DEC(4,1) NOT NULL,
 carbs DEC(4,1) NOT NULL,
  color VARCHAR(20) NOT NULL,
   ice  CHAR(1) NOT NULL,
    calories INT NOT NULL
   );

CREATE TABLE my_contacts (
    first_name VARCHAR(20),
    last_name VARCHAR(30),
    email VARCHAR(50),
    birthday DATE,
    gender CHAR(1),
    profession VARCHAR(50),
    location VARCHAR(25),
    status  VARCHAR(20),
    interests VARCHAR(100),
    seeking VARCHAR(100)
);

insert into drink_info values
('Blackthorn', 3 ,8.4 ,'yellow', 'Y', 33),
('Blue Moon', 2.5, 3.2 ,'blue', 'Y', 12),
('Oh My Gosh' ,3.5 ,8.6 ,'orange' ,'Y',35),
('Lime Fizz' ,2.5 ,5.4 ,'green' ,'Y',24),
('Kiss on the Lips' ,5.5 ,42.5 ,'purple', 'Y' ,171),
('Hot Gold' ,3.2 ,32.1 ,'orange', 'N' ,135),
('Lone Tree', 3.6 ,4.2 ,'red' ,'Y' ,17),
('Greyhound', 4 ,14 ,'yellow' ,'Y' ,50),
('Indian Summer', 2.8, 7.2, 'brown', 'N', 30),
('Bull Frog', 2.6, 21.5, 'tan', 'Y', 80),
('Soda and It', 3.8, 4.7, 'red', 'N', 19);


select drink_name from drink_info where cost >= 3.5 and calories <50;


--The cost of each drink with ice that is yellow and has more than
--33 calories
select cost,drink_name from drink_info where calories > 33 and color = 'yellow' and ice ='y';


--The name and color of each drink which does not contain more
--than 4 grams of carbs and uses ice.
select drink_name,color from drink_info where carbs <= 4 and ice ='y';

--the cost of each drink whose calorie count is 80 or more.
select cost from drink_info where calories >= 80;

--Drinks called Greyhound and Kiss on the Lips, along with each one's color and whether ice is used to
--mix the drink, without using the names of the drinks in your query.

select drink_name,color,ice from drink_info where ice ='y' and cost >= 4;

--The comparison operators evaluate everything alphabetically.
--So, say you want to select all the drinks that begin with an ‘L’, here’s a query
--that will select all the drinks that match that criteria.

select drink_name from drink_info where drink_name >='L' and drink_name <'M';

--Selecting your ingredients
--One of the bartenders has been asked to mix a cocktail that has cherry juice
--in it. The bartender could use two queries to find the cocktails:
select drink_name from easy_drinks where main = 'cherry juice' or second = 'cherry juice';