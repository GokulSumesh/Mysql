create database employee_details;
use employee_details;
create table department(dept_id int primary key, name text,description text);
select * from department;
insert into department(dept_id,name,description)values(1,"production","working");
insert into department(dept_id,name,description)values(2,"sales","working");
insert into department(dept_id,name,description)values(3,"marketing","working");

create table designation(desi_id int primary key,deptid int,foreign key(deptid) references department(dept_id),designation_name text);
select * from designation;
insert into designation(desi_id,deptid,designation_name)values(101,1,"production manager");
insert into designation(desi_id,deptid,designation_name)values(102,2,"sales manager");
insert into designation(desi_id,deptid,designation_name)values(103,3,"markeing manager");
insert into designation(desi_id,deptid,designation_name)values(104,1,"production executive");
insert into designation(desi_id,deptid,designation_name)values(105,2,"sales executive");
insert into designation(desi_id,deptid,designation_name)values(106,3,"marketing executive");

alter table designation add descriptions text;
update designation set descriptions="control the executive" where desi_id=101;
update designation set descriptions="control the executive" where desi_id=102;
update designation set descriptions="control the executive" where desi_id=103;
update designation set descriptions="control the employees" where desi_id=104;
update designation set descriptions="control the employees" where desi_id=105;
update designation set descriptions="control the employees" where desi_id=106;

create table employee_table(emp_id int primary key,name text,gender text, dob text, address text,mobileno bigint, email text,deptid int, foreign key (deptid) references department(dept_id),desiid int, foreign key(desiid) references designation(desi_id),doj text);
select * from employee_table;
insert into employee_table(emp_id,name,gender,dob,address,mobileno,email,deptid,desiid,doj)values(201,"gokul","male","18-11-2000","cbe",9455876852,"gokul@gmail.com",1,101,"17-02-2023");
insert into employee_table(emp_id,name,gender,dob,address,mobileno,email,deptid,desiid,doj)values(202,"sumesh","male","08-10-2002","cbe",9455824752,"sumesh@gmail.com",2,102,"28-01-2023");
insert into employee_table(emp_id,name,gender,dob,address,mobileno,email,deptid,desiid,doj)values(203,"ram","male","24-053-2004","cbe",9454578852,"eam@gmail.com",3,103,"13-06-2023");
insert into employee_table(emp_id,name,gender,dob,address,mobileno,email,deptid,desiid,doj)values(204,"ravi","male","25-02-2001","cbe",9454577412,"ravi@gmail.com",1,104,"16-02-2023");
insert into employee_table(emp_id,name,gender,dob,address,mobileno,email,deptid,desiid,doj)values(205,"revi","male","27-06-2000","cbe",9454578963,"revi@gmail.com",2,105,"11-08-2023");
insert into employee_table(emp_id,name,gender,dob,address,mobileno,email,deptid,desiid,doj)values(206,"karthi","male","22-07-2005","cbe",9454577532,"karthi@gmail.com",3,106,"10-07-2023");
insert into employee_table(emp_id,name,gender,dob,address,mobileno,email,deptid,desiid,doj)values(207,"karna","male","05-01-2002","cbe",9454579635,"karna@gmail.com",1,104,"18-03-2023");
insert into employee_table(emp_id,name,gender,dob,address,mobileno,email,deptid,desiid,doj)values(208,"karan","male","14-07-2003","cbe",9454573698,"karan@gmail.com",2,105,"19-11-2023");

select name,gender,dob,address,mobileno,email from employee_table where deptid_fk in (select dept_id_pk from department where name = "sales");
select designation_name,descriptions from designation where deptid_fk in (select dept_id_pk from department where name = "production");
select designation_name from designation where desi_id_pk in(select desiid_fk from employee_table where name="sumesh");