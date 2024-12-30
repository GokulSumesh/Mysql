create database leetcode176;
use leetcode176;
create table employee(id_pk int primary key,salary int);
select * from employee;
insert into employee(id_pk,salary)values
(1,100),
(2,200),
(3,300);

select salary from employee in(;