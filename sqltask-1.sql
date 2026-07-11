create database college_db;
use college_db;
create table student(
student_id int primary key,
student_name varchar(25),
age int ,
city varchar(30)
);

insert into student values(101,"Rahul",21,"Hyderabad"),
(102,"Anjali",20,"Chennai"),
(103,"Ravi",22,"Bangalore"),
(104,"Priya",19,"Pune"),
(105,"Kiran",23,"Mumbai");

select * from student;