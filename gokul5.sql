create database employee_bonus;
use employee_bonus;
create table employee(empId_pk int primary key,name text,supervisor int,salary int);
select * from employee;
insert into employee(empId_pk,name,supervisor,salary)values
(3,"Brad",null,4000),(1,"John",3,1000),(2,"Dan",3,2000),(4,"Thomas",3,4000);

create table bonus(empId_fk int, foreign key(empId_fk)references employee(empId_pk),bonus int);
select * from bonus;
insert into bonus(empId_fk,bonus)values(2,500),(4,2000);
drop table bonus;

select name,bonus from employee left join bonus on employee.empId_pk=bonus.empId_fk where bonus<1000 OR bonus is null;