show databases;

create database sagar;
show databases;
use sagar;
show tables;

create table student(
  name varchar(25),
  roll int primary key,
  marks int );

desc student; -- to see the table structure

-- insert data into student
insert into student values(
"Sagar Singh",1,99);

insert into student value("Ganesh Tudu",2,30);
insert into student value("Dev kant Kumar",3,99);

-- view records of student
select * from student;

-- updating the record of student
update student set marks=80 where roll=2;

-- delete records no longer needed
delete from student; -- delete entire record from the table and can be rolledback

delete from student where roll=3;

drop table student; -- dropping table
drop database sagar;

