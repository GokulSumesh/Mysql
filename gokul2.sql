create database person_details;
use person_details;
create table details(name text, email text, city text,state text);
select * from details;
insert into details(name,email,city)values
("gokul","gokul@gamil.com","Tirupur"),
("karan","karan@gamil.com","Tirupur"),
("karthi","karthi@gamil.com","Erode"),
("kathir","kathir@gamil.com","Madurai"),
("ram","ram@gamil.com","kovai"),
("raj","raj@gamil.com","Chennai"),
("muthu","muthu@gamil.com","Salem");
-- ("kumaran","kumaran@gamil.com","karur","Tamil Nadu"),
-- ("kumar","kumar@gamil.com","kovai","Tamil Nadu"),
-- ("ravi","ravi@gamil.com","Thanjur","Tamil Nadu");
truncate table details;
select count(city),city from details group by city order by count(city) desc ;

describe details;

alter table details drop column country;
alter table details add country text not null default("india");

ALTER TABLE details
MODIFY COLUMN city varchar(50);


create table school(id int primary key, name text, age int);
create table schooladd(id int primary key,addid int, foreign key(addid) references school(id),city text, pin int);
select * from school;
select * from schooladd;

insert into school(id,name,age)values(1,"gokul",24);
insert into school(id,name,age)values(2,"gokulan",28);
insert into school(id,name,age)values(3,"kishore",32);
truncate table school;

insert into schooladd(id,addid,city,pin)values(101,3,"tiruppur",12345);
insert into schooladd(id,addid,city,pin)values(102,2,"erode",1677);
describe schooladd;


select id,name from school where id in(select addid from schooladd where city = "erode");