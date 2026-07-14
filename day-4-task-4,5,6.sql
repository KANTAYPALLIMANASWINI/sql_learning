USE college_info;
CREATE TABLE dept3(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);
desc dept3;
INSERT INTO dept3 values(101,"it"),
(102,"cse"),
(103,"eee"),
(104,"ece"),
(105,"aiml");

select * from dept3;

-- create employee --
create table Employee4
(
emp_id int primary key,
emp_name varchar(50) not null,
email varchar(100) unique,
salary decimal(10,2) default 300000,
age int check(age>=18),
department_id int,
foreign key(department_id)
references dept3(department_id));

insert into Employee4 values(201,"lakshmi","lakshmi@gmail12.com",60000,19,101),
(202,"manu","manu@gmail12.com",60000,20,102),
(203,"taju","teju@gmail12.com",60000,49,103),
(204,"magi","magi@gmail12.com",60700,56,104),
(205,"lucy","lucky@gmail12.com",60900,45,105);





Desc Employee4;

select * from Employee4;

-- task-4--

SELECT *
FROM Employee4
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee4
);
-- task-5 ---
DELIMITER $$

CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM Employee4;
END $$

DELIMITER ;
-- for calling or execute --
CALL GetAllEmployees();

-- task-6--
CREATE INDEX idx_emp_name
ON Employee4(emp_name);

-- verifying the index --
SHOW INDEX FROM Employee4;