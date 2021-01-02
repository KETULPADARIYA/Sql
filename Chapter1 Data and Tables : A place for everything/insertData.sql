INSERT INTO my_contacts ( first_name,last_name,email,gender,birthdate,profession,location,status,interests,seeking )
VALUES ( 'Anderson','Jillian','jill_anderson@breknechpizza.net','f','1990-09-12',
        'Technical Writer','Palo Alto CA','Single','kyaking, Reptiles','Relationship, Friends');


INSERT INTO my_contacts
(last_name, first_name, email, gender, birthday, profession, location, status,
interests, seeking) VALUES ('Anderson', 'Jillian', 'jill_anderson@breakneckpizza.net',
'F', '1980-09-05', 'TechnicAL Writer', 'Single', 'Kayaking, Reptiles', 'Relationship,
Friends');

-- TO get columns
-- SELECT *
-- FROM INFORMATION_SCHEMA.COLUMNS
-- WHERE TABLE_NAME = N'my_contacts'
