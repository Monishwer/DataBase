create database val;

use val;

create table customer(
cust_id varchar(10) primary key not null,
fname varchar(10) not null,
lname varchar(10),
area varchar(10) not null,
phone bigint(10)
);

insert into customer values('A01', 'ivan','ross','SA',6125467);
insert into customer values('A02', 'vandana','ray','MU',5560379);
insert into customer values('A03', 'pramada','jauguste','DA',4560389);
insert into customer values('A04', 'basu','navindi','BA',6125401);
insert into customer values('A05', 'ravi','shridhar','NA',null);
insert into customer values('A06', 'rukmini','aiyer','GH',5125274);

select * from customer;

alter table movie add foreign key(Cust_id) references customer(Cust_id);

select title from movie where price > 100 and price < 200;

select Cust_id from movie where star in ('jc','tc','mc');

select * from customer where Area like '%A%';

select title from movie where length(title)= 6  and price < 180;

alter table customer modify lname varchar(45) not null;

select fname from customer where phone is null;

select distinct Cust_id from movie;

delete from customer where Cust_id = 'A02';

delete from movie where Cust_id = 'A03';

drop table customer;

drop table movie;

alter table movie drop foreign key cust_id;





