create database maveneg;

use maveneg;

create table Student(
Studentid int not null,
Studentname varchar(20) not null,
Studentphone varchar(20) not null
);

insert into Student values 
	(1,"ram","647356"),
    (2,"sam","846357"),
    (3,"ravi","987695"),
    (4,"karan","548368");