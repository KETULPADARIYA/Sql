select drink_name from easy_drinks where main = 'cherry juice';

select drink_name from easy_drinks where second = 'apricot nectar';

select drink_name from easy_drinks where amount2 = '7';
select drink_name from easy_drinks where directions = 'serve over ice with straw';



-- get Bull Frog from the drink_name table
select drink_name from easy_drinks where main = 'iced tea';
select drink_name from easy_drinks where second = 'lemonade';
select drink_name from easy_drinks where directions = 'serve over ice with lime slice';
select drink_name from easy_drinks where amount2 = '5';


--Write a query to find the email addresses of all computer programmers.
select email from my_contacts where profession ='Dentist';

--Write a query to find the name and location of anyone with your birthdate.
select first_name,last_name,location from my_contacts where birthday = '1999-11-30';

--Write a query to find the name and email of any single people who live in your
--town. For extra points, only pick those of the gender you'd want to date.

select  first_name,last_name,email from my_contacts where location = 'Sweden' and gender ='F';

--Write the query Greg could have used to find all the AIRI from 'Estonia'.
select * from my_contacts where first_name = 'AIRI' and location = 'Estonia';


select  drink_name from easy_drinks where main="soda" and amount1 = 1.5;
select  drink_name from easy_drinks where main='soda' and amount1 = 2;