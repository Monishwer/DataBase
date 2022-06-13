use c1236;

create table emp(
emp_id int primary key,
ename varchar(20) not null,
designation varchar(25) not null,
dept varchar(20),
working_hour varchar(10),
salary double(10,2)
);

insert into emp values 
	(1,'vijay','developer','cse','11', 2500.60),
    (2,'ajith','developer','cse','10', 2300.20),
    (3,'vikram','designer','ece','8', 1700.30),
    (4,'surya','trainer','java','7', 2000.70),
    (5,'sk','java developer','advance java','12', 2800.10);

#aggregate function - count
select dept, count(dept) as 'total_emp_in_dept' from emp group by dept;

#sun
select dept, sum(working_hour) as 'totalhours' from emp group by dept;

#select dept, sum(working_hour) as 'totalhours' from emp where dept = 'operation';

select dept, sum(working_hour) as 'totalhours' from emp where dept = 'cse';

select dept, sum(salary) as 'total_dept_salary' from emp group by dept;

#average
select dept, avg(salary) as 'avg_dept_salary' from emp group by dept;

#min
select ename, dept, min(salary) as 'avg_dept_salary' from emp group by dept;
select ename, min(salary) from emp;

#max
select  dept, max(salary) as 'avg_dept_salary' from emp group by dept;

#having
select dept, sum(working_hour) as 'totalhours' from emp group by dept having sum(working_hour) > 15; 




