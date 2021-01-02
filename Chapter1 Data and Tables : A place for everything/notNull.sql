drop table  my_contacts;
CREATE TABLE my_contacts (
    first_name VARCHAR(20) Not NULL,
    last_name VARCHAR(30) Not NULL,
    email VARCHAR(50) Not NULL,
    birthday DATE Not NULL,
    gender CHAR(1) Not NULL,
    profession VARCHAR(50) Not NULL,
    location VARCHAR(25) Not NULL,
    status  VARCHAR(20) Not NULL,
    interests VARCHAR(100) Not NULL,
    seeking VARCHAR(100) Not NULL
);
desc my_contacts;