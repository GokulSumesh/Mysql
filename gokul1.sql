create database gk_bakery;
use gk_bakery;
create table freshjuice(id int,name text,price int);
select * from freshjuice;
insert into freshjuice(id,name,price)values(1,"applejuice",80);
insert into freshjuice(id,name,price)values(2,"orangejuice",40);
insert into freshjuice(id,name,price)values(3,"pineapplejuice",60);
insert into freshjuice(id,name,price)values(4,"mangojuice",70);
insert into freshjuice(id,name,price)values(5,"carrotjuice",90);
insert into freshjuice(id,name,price)values(6,"datesjuice",140);

create table snacks(id int,name text,price int);
select * from snacks;
insert into snacks(id,name,price)values(1,"creambun",20);
insert into snacks(id,name,price)values(2,"chips",30);
insert into snacks(id,name,price)values(3,"biscuits",40);
insert into snacks(id,name,price)values(4,"jambun",10);

update snacks set price = 100 where id = 3;
update freshjuice set name = "apple" where id = 1;
update freshjuice set name = "orange"where id = 2;
update freshjuice set name = "pineapple" where id = 3;
update freshjuice set name = "mango" where id = 4;
update freshjuice set name = "carrot" where id = 5;
update freshjuice set name = "dates" where id = 6;

set sql_safe_updates=0;
delete from freshjuice where id=1;
truncate table freshjuice;
drop table freshjuice;