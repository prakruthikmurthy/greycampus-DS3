create table students (
student_id serial primary key,
first_name varchar(50) not null,
last_name varchar(50),
homeroom_number integer,
phone varchar(20) unique not null,
email varchar(50) unique not null,
graduation_year integer)

create table teachers (
teacher_id serial primary key,
first_name varchar(50) not null,
last_name varchar(50),
homeroom_number integer,
department varchar(30),
phone varchar(25) unique,
email varchar(50) unique)

insert into students (student_id,first_name,last_name,homeroom_number,phone,email,graduation_year )
values (1,'Mark','Watney',5,'777-555-1234','n/a',2035);
select * from students;

insert into teachers (teacher_id, first_name, last_name, homeroom_number, department, phone, email)
values (1, 'Jonas', 'Salk', 5 , 'Biology', '777-555-4321', 'jsalk@school.org');
select * from teachers;