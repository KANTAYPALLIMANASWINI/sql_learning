USE college_info;
CREATE TABLE dept1(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);
desc dept1;
INSERT INTO dept1 values(101,"it"),
(102,"cse"),
(103,"eee"),
(104,"ece"),
(105,"aiml");

select * from dept1;

-- create employee --
create table Employee2
(
emp_id int primary key,
emp_name varchar(50) not null,
email varchar(100) unique,
salary decimal(10,2) default 300000,
age int check(age>=18),
department_id int,
foreign key(department_id)
references dept1(department_id));


Desc Employee2;

select * from Employee2;
 
-- update the values --
  update Employee2 set salary=90 where emp_id=201;
  select * from  Employee2 ;
  
  
  
START TRANSACTION;

UPDATE Employee2
SET salary = 600000 - 10000
WHERE emp_id = 202;


-- Check the updated value
SELECT * FROM Employee2 WHERE emp_id = 202;

-- Undo the update
ROLLBACK;

-- Verify that the original salary is restored
SELECT * FROM Employee2 WHERE emp_id = 201;

start transaction;
  update Employee2 set salary=60000-10000 where emp_id=204;
  update Employee2 set salary=60700+10000 where emp_id=203;
  commit;
  
  
  
