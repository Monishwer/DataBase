#subquery

use c1236;

select * from emp where emp_id in (select emp_id from emp where working_hour > 10);

select * from emp where emp_id in (select emp_id from emp where salary > 1200);

select * from emp where salary = (select max(salary) from emp);

select * from emp where addr not in (select addr from emp where addr = 'mumbai');

select * from emp where dept != (select dept from emp where dept = 'java');

select * from emp where salary > (select salary from emp where ename = 'ajith');

select customerid, customername from customer where customerid > any (select customerid from orders);

select customerid, customername from customer where customerid > all (select customerid from orders);

select customername, customerphone from customer where not exists (select * from orders where customer.customerid = orders.customerid);

select dept, count(emp_id), sum(salary) as 'total_deptsalary' from emp group by dept with rollup;





