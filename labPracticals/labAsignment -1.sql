create database labexp;

use labexp;

#table creation
create table EMP1(
ID int(2) not null,
Ename varchar(10) not null,
Basic double(6,2),
Designation varchar(10),
Age int(2)

);

#changing datatype
alter table EMP1 MODIFY Basic int not null;

#changing size of filed
alter table EMP1 MODIFY Ename varchar(15) not null;

#creation of another table
create table EMP_trainee(
Emp_id int(2) not null,
Ename varchar(15) not null,
Basic int,
Designation varchar(10),
Age int(2)
);

#insertion for EMP1
insert into EMP1 values(1,'Rohit',6700,'Manager',24);
insert into EMP1 values(2,'Sunil',6200,'Engineer',27);
insert into EMP1 values(3,'Payal',6300,'Engineer',25);
insert into EMP1 values(4,'Kunal',6700,'Trainee',28);
insert into EMP1 values(5,'Sunita',6230,'Trainee',26);
insert into EMP1 values(6,'Bimal',7000,'Trainee',25);

#insertion for EMP_trainee
insert into EMP_trainee values(1,'Rohit',6700,'Manager');
insert into EMP_trainee values(2,'Sunil',6200,'Engineer');
insert into EMP_trainee values(3,'Payal',6300,'Engineer');
insert into EMP_trainee values(4,'Kunal',6700,'Trainee');
insert into EMP_trainee values(5,'Sunita',6230,'Trainee');
insert into EMP_trainee values(6,'Bimal',7000,'Trainee');

select * from EMP_trainee;

#adding new columns
alter table EMP1 ADD column Skills varchar(10)  after Age;
alter table EMP1 ADD column DOJ date;

select * from EMP1;

#inserting value to the new column
insert into EMP1 (Skills, DOJ) values ('java','2000-10-25');

#modify designation
alter table EMP_trainee MODIFY Designation varchar(30) not null;
update EMP_trainee set Designation = "Programmer_Trainee";

#updating rows
update EMP1 set Ename = 'Rohit Sharma' where ID = 1;
update EMP1 set Basic = 3500 where ID = 2;

#increasing size
alter table EMP1 MODIFY ID varchar(5) not null;

#renaming
alter table EMP1 CHANGE COLUMN age Age_in_years int;

#deleting
delete from EMP1;

#dropping age column
alter table EMP_trainee DROP COLUMN Age;







