select mc.first_name,mc.last_name
from my_contacts as mc natural join job_desired as jd
where jd.salary_high < 105000 and jd.years_exp >= 5 and
jd.title="web_devoloper";


select mc.first_name,mc.last_name,mc.phone,jc.title
from job_current as jc natural join my_contacts as mc
where jc.title in  (select title from job_listings);


select jc.salary,mc.first_name,mc.last_name
from my_contacts as mc natural join job_current jc
where jc.salary =
(select max(jc.salary) from job_current as jc );


select mc.first_name,mc.last_name,(select state from zip_code as zc where zc.zip_code = mc.zip_code )
from my_contacts as mc;

select mc.salary
from mc_contacts as mc natural join job_current jc
where mc.email = 'andy@weatherorama.com';


select mc.first_name,mc.last_name,jc.salry
from my_contacts as mc natural join job_current as jc
where jc.salary > ()


--Write a query to get the average salary of a Web Developer from the job_current table.
select avg(salary) from job_current where job_current.job_title= "Web Developer";

--Write a query to get the first name, last name, and salary of all Web Developers in the
--job_current table.
select first_name,last_name,salary from job_current where job_current.job_title = "Web Developer";

--Combine the two queries. Use the subquery as part of the SELECT column list.
select first_name,last_name,salary
from jon_current as jc
where jc.job_title = "Web Developer" and jc.salary < (
select avg(salary) from job_current as jc where jc.job_title = 'Web Developer' );



--List titles for jobs that earn salaries equal to the highest salary in the job_listings table.
select jl.job_title
from job_listing as jl where jc.salary = (select max(salary) from job_listing);

--List the first and last name of people with a salary greater than the average salary.
select mc.first_name,mc.last_name
from my_contacts mc natural join job_current jc
where jc.salary > (select avg(salary) from job_current);

--Find all web designers who have the same zip code as any job_listings for web designers.
select mc.first_name,mc.last_name
from my_contacts mc natural join job_current  as jc
where jc.title = "Web Developer" and
zc.zip_code in (select zip_code in job_listing where title = "Web Developer");


--List everyone who lives in the same zip code as the person with the highest current salary.
select mc.first_name,mc.last_name
from my_contacts
where  zip_code in ( select mc.zip_code from my_cintacts mc natural  join job_current jc
 where jc.salary = (  select max(salary) from job_current   ) ;
