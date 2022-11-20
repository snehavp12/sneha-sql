create database supermarket;
use supermarket;
create table sales(columnsid int,productname char(30),priceperunit int,quantity int);
insert into sales value (1,'banana',10,8), (2,'strawberry',100,98), (3,'mango',50,49), (4,'orange',30,30), (5,'watermelon',110,100);
select*from sales;
select*,priceperunit*quantity as totalcostperproduct from sales;
select*from sales where columnsid is null;

create table info(id int,name char(30),age int);
insert into info values (1,'bob',21), (2,'sam',19), (3,'jill',18), (4,'jim',21), (5,'sally',19), (6,'jess',20), (7,'will',21);
select*from info;
select sum(age) from info;
select age,name from info group by age;
select age,count(name)from info group by age;

create table company(divisionid int, year int, revenue int);
insert into company value(1,2018,60), (1,2021,40), (1,2020,70),(2,2020,-10),(3,2018,20),(3,2016,40),(4,2021,50);
select*from company;
select * from company where(revenue>0 and year=2021);