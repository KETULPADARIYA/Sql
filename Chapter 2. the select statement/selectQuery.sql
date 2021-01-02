--select the firstname is LEA

select * from  my_contacts where first_name = "LEA";
--+------------+-----------+----------------------+------------+--------+------------+----------+------------+-----------+------------------------------------------------------------------------------------------------------+
--| first_name | last_name | email                | birthday   | gender | profession | location | status     | interests | seeking                                                                                              |
--+------------+-----------+----------------------+------------+--------+------------+----------+------------+-----------+------------------------------------------------------------------------------------------------------+
--| LEA        | AALISTE   | LEAAALISTE@gmail.com | 1990-10-10 | F      | Judge      | Estonia  | not_single | Writing   |     Highly-engaged sales representative with a BS in Biology, seeking to enhance sales figures for A |
--| LEA        | VOSU      | LEAVOSU@gmail.com    | 1990-02-26 | F      | Judge      | Estonia  | single     | Dance     |  Seeking a position as an administrative assistant at Acme Inc., to leverage organizational and rese |
--+------------+-----------+----------------------+------------+--------+------------+----------+------------+-----------+------------------------------------------------------------------------------------------------------+
--2 rows in set (0.01 sec)
