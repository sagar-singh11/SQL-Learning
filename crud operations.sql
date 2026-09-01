create table students (
 id int generated always as identity primary key,
 name varchar(50) not null,
 course varchar(50) not null,
 marks int check (marks > 30),
 is_pass boolean
);

select tablename from pg_tables where schemaname = 'public';
select column_name , data_type , is_nullable from information_schema.columns where table_name = 'students';

select * from students;

insert into students (name, course , marks , is_pass)
values
('Dev Kant Kumar','BCA',99,true),
('Alex','MCA',96,true);

-- update marks of dev kant kumar to 100
-- add a new student Jhon marks = 78 , course = BCA pass = true 
-- show all students of BCA 
-- delete records of Alex 

update students set marks =80 where devkant roll=100;

select * from students;
update students set marks = 100 where id = 2;
select * from students where id = 2 ; 

insert into students(name,course,marks,is_pass)values
('john','BCA',78,true);

select * from students;

update students set course='B Tech' where id=1;

select * from students

