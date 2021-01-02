drop  table doughnut_list;
create table doughnut_list
(
    doughnut_name  VARCHAR(10) NOT NULL,

    doughnut_type VARCHAR(8) NOT NULL,

    doughnut_cost DEC(3,2)   NOT NULL   DEFAULT 1.00
);

insert into doughnut_list values ("Blooberry","filled",2.00);
insert into doughnut_list values ("Appleblush","filled",1.00);
insert into doughnut_list (doughnut_name,doughnut_type) values ("Rockstar","cruller");
insert into doughnut_list (doughnut_name,doughnut_type ) values ("Carameller","cruller");
insert into doughnut_list (doughnut_name,doughnut_type ) values ("Cinnamondo","ring");

select * from doughnut_list;
