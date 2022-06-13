#foreign key using alter
alter table orders Add Foreign key(customerid) references customer(customerid);

#foreign key

#after dropping the orders table only we need to create this table

create table orders(
orderid int primary key,
orderdate date,
quantity int,
price double(5,2),
customerid int,
foreign key(customerid) references customer(customerid)
);

