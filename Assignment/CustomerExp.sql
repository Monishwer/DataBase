create database example;

use example;

create table user_info(
Cust_id varchar(5) not null,
Fname varchar(15) not null,
Lname varchar(15) not null,
Area char(2) not null unique,
Phone bigint(10) not null unique,
DOB date,
Payment bigint(6)

);

insert into user_info values ("A01","Ivan","Ross","SA",6125467,"1986-01-15","8000.51");
insert into user_info values ("A02","Vandana","Ray","MU",5560397,"1987-12-20","1000.75");
insert into user_info values ("A03","Pramada","Jauguste","DA",4560389,"1967-07-25","500.00");
insert into user_info values ("A04","Basu","Navindi","BA",6125401,"1956-02-29","860.00");
insert into user_info values ("A05","Ravi","Shridhar","NA",84637,"1989-02-15","500.50");
insert into user_info values ("A06","Rukmini","Aiyer","GH",5125274,"1987-07-23","1500.50");

update user_info set Phone = 89765 where Cust_id = "A02";
update user_info set Phone = 5384657 where Cust_id = "A04";

update user_info set DOB = "2000-10-23" where Cust_id = "A03";
update user_info set DOB = "2000-10-12" where Cust_id = "A05";

delete from user_info where Cust_id = "A01";
delete from user_info where Cust_id = "A05";

delete from user_info;

insert into user_info values ("A01","vijay","kumar","DN",612547,"1974-07-22","8002.51");
insert into user_info values ("A02","ajith","kumar","TU",373254,"1970-05-01","8003.51");
insert into user_info values ("A03","vikram","cheeyan","TR",3983,"1969-05-15","8004.51");
insert into user_info values ("A04","surya","ram","TS",38454,"1975-07-12","8005.51");
insert into user_info values ("A05","sk","vel","TP",48654,"1982-03-24","8006.51");

update user_info set Lname = "Joseph" where Cust_id = "A01";

delete from user_info where phone = 48654;










