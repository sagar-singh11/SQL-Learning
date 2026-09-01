create table teachers (
id int generated always as identity primary key,
email varchar(50) not null unique,
name varchar(50) not null,
course varchar(50) not null,
salary int default 20000,
is_working boolean not null
);

-- check created table

select column_name,data_type,is_nullable from information_schema.columns where table_name='teachers';

-- how to insert data into table

insert into teachers (email,name,course,salary,is_working)
values
('sagar.techhandle@gmail.com' , 'Sagar Singh', 'SQL',50000,true),
('hello@devkantkumar.com','Dev Kant Kumar','JavaScript', 100000 , true);

-- select all records
select * from teachers;

-- insert more records . 
insert into teachers (email,name,course, salary,is_working)
values
('rahul.sharma@gmail.com', 'Rahul Sharma', 'Python', 75000, true),
('priya.verma@gmail.com', 'Priya Verma', 'Java', 85000, true),
('amit.kumar@gmail.com', 'Amit Kumar', 'C++', 65000, true),
('neha.singh@gmail.com', 'Neha Singh', 'React', 90000, true),
('rohit.patel@gmail.com', 'Rohit Patel', 'Node.js', 95000, false),
('anjali.gupta@gmail.com', 'Anjali Gupta', 'HTML & CSS', 55000, true),
('vikas.yadav@gmail.com', 'Vikas Yadav', 'C#', 80000, false),
('pooja.mehta@gmail.com', 'Pooja Mehta', 'PostgreSQL', 110000, true);

-- show teacher which salary is more than or equal to 90,000
select * from teachers where salary >= 90000;

-- sum of salaries of all teachers 
select sum(salary) as total_salaries from teachers ;

-- find the teachers which are not working now 
select * from teachers where is_working = false;

-- update the working status of Rohit Patel as he is back on work  and also check if updated
update teachers set is_working = true where id = 7;
select * from teachers where id = 7 ;

-- show all teachers working currently also show their counts
select * from teachers where is_working = true;
select count(*) from teachers where is_working = true;

-- delete the teachers who is not working now and also check 
delete from teachers where is_working = false;
select * from teachers;
