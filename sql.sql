
show databases;

CREATE TABLE users(username varchar(25),password varchar(25),
firstname varchar(25),lastname varchar(25));




CREATE TABLE diseases(name varchar(64),mGroup varchar(64),description varchar(64));
CREATE TABLE anatomy(name varchar(64),mGroup varchar(64),description varchar(64));
CREATE TABLE drugs(name varchar(64),mGroup varchar(64),description varchar(64));

insert into diseases values ("ligament tear","disease","Caused when playing");

insert into anatomy values ("back","position","The muscle at the front");

insert into drugs values ("sophiatonic","syrup","Used to cure muscle pain");

select * from anatomy;


