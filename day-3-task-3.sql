USE college_info;
CREATE TABLE dept2(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);
desc dept2;
INSERT INTO dept2 values(101,"it"),
(102,"cse"),
(103,"eee"),
(104,"ece"),
(105,"aiml");

select * from dept2;

-- create employee --
create table Employee3
(
emp_id int primary key,
emp_name varchar(50) not null,
email varchar(100) unique,
salary decimal(10,2) default 300000,
age int check(age>=18),
department_id int,
foreign key(department_id)
references dept2(department_id));

insert into Employee3 values(201,"lakshmi","lakshmi@gmail12.com",60000,19,101),
(202,"manu","manu@gmail12.com",60000,20,102),
(203,"taju","teju@gmail12.com",60000,49,103),
(204,"magi","magi@gmail12.com",60700,56,104),
(205,"lucy","lucky@gmail12.com",60900,45,105);





Desc Employee3;

select * from Employee3;

-- update phone number --
ALTER TABLE Employee3
ADD phone_number VARCHAR(15);

ALTER TABLE Employee3
MODIFY phone_number VARCHAR(15);


UPDATE Employee3
SET phone_number = '9876543210'
WHERE emp_id = 201;


UPDATE Employee3
SET phone_number = '9123456789'
WHERE emp_id = 202;

UPDATE Employee3
SET phone_number = '9988776655'
WHERE emp_id = 203;  


select * from Employee3;