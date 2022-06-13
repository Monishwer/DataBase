use c1236;

#inner join 
select customer.customername, orders.orderdate from customer inner join orders on 
customer.customerid = orders.customerid;

#or

select customername, orderdate from customer inner join orders on 
customer.customerid = orders.customerid;

#or

select c.customername, o.orderdate from customer c inner join  orders o on
c.customerid = o.customerid;


#or

select c.customername, o.orderdate from customer c, orders o where 
c.customerid = o.customerid;

#left outer join
select customer.customerid, customername, orderdate from customer left join orders on 
customer.customerid = orders.customerid;

#right outer join
select customer.customerid, customername, orderdate from customer right join orders on 
customer.customerid = orders.customerid;

#cross join
select * from customer cross join orders;

#self join
select s1.sname, s1.saddr from student_details s1 inner join student_details s2 on s1.saddr = s2.saddr 
and s1.id <> s2.id order by s1.id;











