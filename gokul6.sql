create database leetcode607;
use leetcode607;
create table salesPerson(sales_id_pk int primary key,name text,salary int,commission_rate int,hire_date date);
select * from salesPerson;
insert into salesPerson(sales_id_pk,name,salary,commission_rate,hire_date)values
(1,"John",100000,6,"2006-4-1"),
(2,"Amy",12000,5,"2010-5-1"),
(3,"Mark",6500,12,"2008-12-25"),
(4,"Pam",2500,25,"2005-1-1"),
(5,"Alex",5000,10,"2007-3-2");


create table company(com_id_pk int primary key,name text,city text);
select * from  company;
insert into company(com_id_pk,name,city)values
(1,"red","boston"),
(2,"orange","new york"),
(3,"yellow","boston"),
(4,"green","Austin");

create table orders(order_id_pk int primary key,order_date date,com_id_fk int,foreign key(com_id_fk) references	company(com_id_pk),sales_id_fk int,foreign key(sales_id_fk)references salesPerson(sales_id_pk),amount int);
select * from orders;
insert into orders(order_id_pk,order_date,com_id_fk,sales_id_fk,amount)values
(1,"2014-1-1",3,4,10000),
(2,"2014-2-1",4,5,5000),
(3,"2014-3-1",1,1,50000),
(4,"2014-4-1",1,4,25000);

select name from salesPerson where sales_id_pk not in(select sales_id_fk from orders where com_id_fk in(select com_id_pk from company where name="red"));
