create  database college_info; -- create data base as college info--
show databases;
USE college_info;
CREATE TABLE dept(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);
desc dept;
INSERT INTO dept values(101,"it"),
(102,"cse"),
(103,"eee"),
(104,"ece"),
(105,"aiml");

select * from dept;


-- creating table employee--
create table Employee
(
emp_id int primary key,
emp_name varchar(50) not null,
email varchar(100) unique,
salary decimal(10,2) default 300000,
age int check(age>=18),
department_id int,
foreign key(department_id)
references dept(department_id));


Desc Employee;

-- inseting  values into employee table ---
insert into Employee values(201,"lakshmi","lakshmi@gmail12.com",60000,19,101),
(202,"manu","manu@gmail12.com",60000,20,102),
(203,"taju","teju@gmail12.com",60000,49,103),
(204,"magi","magi@gmail12.com",60700,56,104),
(205,"lucy","lucky@gmail12.com",60900,45,105);

select * from Employee;

-- constraints ---

--  primary key(id)  ->must be unique
insert into Employee values(201,'alex','alex@gmail.com',70000,25,101);
-- primary key accepts only unique values,otherwise error

-- unique key(email) (cant accept duplicate values)
insert into Employee values(11,'ma','manu@gmail.com',34000,34,102);

-- not null(must be present)
insert into Employee(emp_id,email,salary,age,dept_id)
values(11,'manu@gmail.com',34000,34,102);
 
 -- default
 insert into Employee(emp_id,emp_name,email,age,department_id)
values(11,'chaitu','chaithu@gmail.com',34,102);


-- check  (constraint is violated <18)

insert into Employee(emp_id,emp_name,email,age,department_id)
values(12,'chaiu','chathu@gmail.com',15,102);

-- forgein key---
insert into Employee(emp_id,emp_name,email,age,department_id)
values(12,'chaiu','chathu@gmail.com',19,170); 

-- selectiong a particular elements in employeee --
select emp_id ,salary from Employee;

-- where condition for particular ---

select*
from Employee
where emp_name="manu";

-- Distinct means removes  duplicate valuesss---
select  distinct department_id
from Employee;

-- order by--- gives sequential in asscending or descending order
 select * from Employee
  order by salary desc;
  
  select * from Employee
  order by salary
  
  -- alaphabests in order by --
 select * from Employee
  order by emp_name desc;

 select * from Employee
  order by emp_name asc;  

select * from Employee

-- limit---
select * from Employee limit 4; --- gives four rows

--- Between---
select *
from Employee
where salary between 50000 and 65000;

select *  
from Employee 
where age between 18 and 25;

--- IN --  ---checks multiple values in one condition---
select * from Employee 
where department_id in (101,103,105)

-- Not In--  not in uses instead of  in ---
select * from Employee 
where department_id  not in (101,103,105)

--  is null checks for empty values ---
select * from Employee 
where email is null;

--  is  not null checks for  non empty values ---
select * from Employee 
where email is not  null;
  
  -- like  pattern  matching starts with l  "
  select * from Employee
  where emp_name like 'l%';
  
  
  select * from Employee;
  
  select * from Employee
  where emp_name like '%u'; -- ends with u
  
  -- %an%  in between it sholud  be --
  select * from Employee
   where emp_name like '%an%';
   
   -- "_a% ---"  second letter must be a letter
    select * from Employee
   where emp_name like "_a%";
   
   
   -- aggregate functions(sum,max,min,count,avg) ---
   
    select max(salary)
   from Employee;
   
   select min(salary)
   from Employee;
   
    select avg(salary)
   from Employee;
   
   select sum(salary)
   from Employee;
   
   select count(*) from Employee;  -- count  no of rows ---
   
   
   -- group by  means  makes the group in any field-- 
   
   select department_id ,
   count(*)
   from Employee 
   group by department_id
   
   
   -- having  group chesina taruvatha condition apply chesthe having ---
   
   select  department_id,
   count(*)
   from Employee 
   group by department_id having count(*)>1;
   
   --  alias means alternate name  ---
   select emp_name as Employee_Name,
   salary as Employee_salary
   from Employee
   
   select e.emp_name,e.emp_id from employee e;
   

    
  
  





 
   



