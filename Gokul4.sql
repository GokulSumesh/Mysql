create database library;
use library;
create table address(add_id_pk int primary key,door_no int,street text,city text,int_code int);
select * from address;
insert into address(add_id_pk,door_no,street,city,int_code)values(4001,11,"abc","cbe",101),(4002,21,"abc","cbe",101),(4003,21,"abc","tpr",103),(4004,21,"xyz","tpr",104);

create table department(dep_id_pk int primary key,name text);
select * from department;
insert into department(dep_id_pk,name)values(3001,"librarion"),(3002,"maintenance"),(3003,"support");

create table person(person_id_pk int primary key,name text,phone bigint,add_id_fk int,foreign key(add_id_fk) references address (add_id_pk));
select * from person;
insert into person(person_id_pk,name,phone,add_id_fk)values(1001,"ramu",77777,4001),(1002,"somu",88888,4001),(1003,"gita",99999,4002),(1004,"sita",66666,4002),(1005,"gopu",55555,4003),(1006,"rita",98989,4003),(1007,"tinku",78787,4004),(1008,"pimku",68686,4004),(1009,"jimmy",54545,4001);

create table staff(staff_id_pk int primary key,person_id_fk int,foreign key(person_id_fk) references person(person_id_pk),salary int,dep_id_fk int,foreign key(dep_id_fk) references department(dep_id_pk));
select * from staff;
insert into staff(staff_id_pk,person_id_fk,salary,dep_id_fk)values(2001,1001,20000,3001),(2002,1002,50000,3001),(2003,1003,7000,3002),(2004,1004,60000,3002),(2005,1005,10000,3003);

select * from person where person_id_pk in(select person_id_fk from staff where dep_id_fk in (select dep_id_pk from department where name="librarion"));

select salary from staff join person on person.person_id_pk=staff.person_id_fk;

select name,phone,add_id_fk,salary from staff join person on person.person_id_pk=staff.person_id_fk where dep_id_fk in (select dep_id_pk from department where name="maintenance")  ;

