#create db
create database c1236;

#use db
use c1236;

#create table inside db
create table Student(
id int primary key auto_increment,
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique,
saddr varchar(50),
squalification varchar(10) not null,
sfees double,
sdob date,
sdept varchar(20)
);

#add new col
alter table Student ADD age int after sdob;

#modify datatype size
alter table Student MODIFY squalification varchar(20) not null;

#modify constraint
alter table Student MODIFY sfees double not null;

#drop col
alter table Student DROP COLUMN sdept;

#change col name
alter table Student CHANGE COLUMN age sage int;

#rename table name
alter table Student RENAME TO student_details;

#insert single row
insert into student_details values (1,"mamta",834822288,"mamta@gmail.com","mombai, maharashtra","MCA","1000.3","2020");


#insert multiple row
insert into student_details values 
(2,"ram",8348453288,"mani@gmail.com","chennai, tn","BE","1000.3","2000-09-01",22),
(3,"priya",834822288,"maa@gmail.com","velacherry, tn","MCA","1000.3","2003-06-01",20),
(4,"sam",834889288,"hars@gmail.com","madurai, tn","BA","1000.3","2004-06-04",19);


insert into student_details values 
(5,"rahim",8348453248,"manikandan@gmail.com","chennai, tn","BE","1000.3","2000-04-15",23),
(6,"priyavidhya",834822388,"muua@gmail.com","velacherry, tn","MCA","1000.3","2003-02-18",23),
(7,"samu",834845281,"harsss@gmail.com","madurai, tn","BA","1000.3","2004-10-19",20);

#update
update student_details set sage = 25 where id = 6;

#delete
delete from student_details where id = 7;












