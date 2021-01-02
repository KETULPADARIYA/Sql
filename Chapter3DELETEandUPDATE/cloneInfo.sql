create table clown_info (
    name VARCHAR(20),
    last_seen VARCHAR(100),
    appearance VARCHAR(250),
    activities VARCHAR(100)
);
insert  into clown_info
values  ('Elsie', 'Cherry Hill Senior Center', 'F red hair green dress, huge feet' ,'balloons, little car'),
('Pickles', 'Jack Green\'s party', 'M, orange hair, blue suit, huge feet' ,'mime'),
('Snuggles', 'Ball-Mart', 'F, yellow shirt, baggy red pants' ,'horn, umbrella'),
('Mr. Hobo', 'BG Circus', 'M, cigar, black hair, tiny hat' ,'violin'),
('Clarabelle', 'Belmont Senior Center', 'F, pink hair, huge flower, blue dress' ,'yelling, dancing'),
('Scooter', 'Oakland Hospital', 'M, blue hair, red suit, huge nose' ,'balloons'),
('Zippo', 'Millstone Mall', 'F, orange suit, baggy pants' ,'dancing'),
('Babe','Earl\'s Autos', 'F, all pink and sparkly' ,'balancing, little car'),
('Bonzo',NULL ,'M, in drag, polka dotted dress' ,'singing, dancing'),
('Sniffles', 'Tracy\'s',' M, green and purple suit, pointy nose',NULL)
;

INSERT INTO clown_info VALUES ('Zippo', 'Millstone Mall', 'F, orange suit, baggy pants','dancing, singing');

INSERT INTO clown_info VALUES ('Snuggles', 'Ball-Mart', 'F, yellow shirt, baggy blue pants','horn, umbrella');
INSERT INTO clown_info VALUES ('Bonzo','Dickson Park','M, in drag, polka dotted dress' ,'singing, dancing');
INSERT INTO clown_info VALUES ('Sniffles', 'Tracy\'s',' M, green and purple suit, pointy nose','climbing into tiny car');
INSERT INTO clown_info VALUES ('Mr. Hobo', 'party for Eric Gray', 'M, cigar, black hair, tiny hat' ,'violin'),;

delete from clown_info where activities = 'dancing';
-- ex ans 1 ,NO, NO,  1,2,4,    1   NO


insert  into clown_info values ('Clarabella','Belmont Senior Center','F,pink hair, huge flower, blue dress', 'dancing');

delete from clown_info where name = "Clarabella" and activities='yelling, dancing';

--Change the calories of Kiss on the Lips to 170.
insert into drink_info values ('Kiss on the Lip',5.5,42.5,"purple",'Y',170);
delete  from drink_info where  drink_name = 'Kiss on the Lip' and calories=171;


--Change the yellow values to gold.
insert into drink_info values ("Blackthorn",3,8.4,'gold','Y',33),('Greyhound',4,14,'gold','Y',50);
delete  from drink_info where color="yellow";
select *  from drink_info where color="yellow";


insert into drink_info values
('Blue Moon', 3.5, 3.2, 'blue', 'Y', 12),
('Lime Fizz', 3.5, 5.4, 'green', 'Y', 24);

('Oh My Gosh', 4.5, 8.6, 'orange', 'Y', 35),

delete from drink_info where cost =2.5 or cost = 3.5;
insert into clown_info values ('Mr. Hobo','Tracy\'s','M, cigar, black hair, tiny hat','violin');


SELECT * from clown_info where name = 'Mr. Hobo' and last_seen = 'Dickson Park';

UPDATE clown_info SET last_seen='Tracy\'s' WHERE name = 'Mr. Hobo' and last_seen = 'BG Circus';

select * from clown_info where name = "Snuggles";
UPDATE clown_info set apperance = 'F, yellow shirt,baggy blue pants' where name = 'Snuggles'

select * from clown_info where name = 'Bonzo';
UPDATE clown_info set last_seen = 'Dickson Park' where name = 'Bonzo';

select * from clown_info where name = 'Sniffles';
UPDATE clown_info set activities = 'climbing into tiny car' where name = 'Sniffles';

select * from clown_info where name = 'Mr. Hobo';

UPDATE clown_info set last_seen = 'party for Eric Gray' where name = 'Mr. Hobo';


update drink_info
SET cost = cost + 1
where
drink_name = 'Blue Moon'
or
drink_name = 'Oh My Gosh'
or
drink_name = 'Lime Fizz';


select drink_name,cost from drink_info where
drink_name = 'Blue Moon'
or
drink_name = 'Oh My Gosh'
or
drink_name = 'Lime Fizz';


update drink_info
SET cost = cost - 1
where
drink_name = 'Blue Moon'
or
drink_name = 'Oh My Gosh'
or
drink_name = 'Lime Fizz';


select drink_name,cost from drink_info where
drink_name = 'Blue Moon'
or
drink_name = 'Oh My Gosh'
or
drink_name = 'Lime Fizz';
