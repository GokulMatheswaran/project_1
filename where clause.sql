create database emp;
CREATE TABLE emp.employee (
emp_id INT,
ename VARCHAR(30),
job_desc VARCHAR(20),
salary INT );

INSERT INTO emp.employee VALUES(1,'Ram','ADMIN',1000000);
INSERT INTO emp.employee VALUES(2,'Harini','MANAGER',2500000);
INSERT INTO emp.employee VALUES(3,'George','SALES',2000000);
INSERT INTO emp.employee VALUES(4,'Ramya','SALES',1300000);
INSERT INTO emp.employee VALUES(5,'Meena','HR',2000000);
INSERT INTO emp.employee VALUES(6,'Ashok','MANAGER',3000000);
INSERT INTO emp.employee VALUES(7,'Abdul','HR',2000000);
INSERT INTO emp.employee VALUES(8,'Ramya','ENGINEER',1000000);
INSERT INTO emp.employee VALUES(9,'Raghu','CEO',8000000);
INSERT INTO emp.employee VALUES(10,'Arvind','MANAGER',2800000);
INSERT INTO emp.employee VALUES(11,'Akshay','ENGINEER',1000000);
INSERT INTO emp.employee VALUES(12,'John','ADMIN',2200000);
select * from emp.employee;

-- where clause
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;

SELECT * FROM emp.employee
WHERE ename = 'Ramya'; 

SELECT emp_id,ename,salary FROM emp.employee
WHERE salary<2000000; 

SELECT emp_id,ename,salary FROM emp.employee
WHERE salary<2600000 AND job_desc = 'MANAGER'; 

SELECT * FROM emp.employee
WHERE job_desc='ADMIN' OR job_desc='HR'; -- though this works next command is a much better choice

SELECT * FROM emp.employee
WHERE job_desc IN ('ADMIN','HR'); 
select * from emp.employee;

SELECT * FROM emp.employee
WHERE job_desc NOT IN ('MANAGER','CEO');
select * from emp.employee;

SELECT * FROM emp.employee
WHERE salary BETWEEN 2000000 AND 3000000
LIMIT 7; -- limits the records shown 
select * from emp.employee;

SELECT * FROM emp.employee
LIMIT 5;  -- Different syntax in oracle/sql server

-- Like and wildcards

SELECT * FROM emp.employee
WHERE ename LIKE 'A%'; -- filters name starting with A

SELECT * FROM emp.employee
WHERE ename LIKE 'R%a'; -- filters name starting WITH R AND ending with a

SELECT * FROM emp.employee
WHERE ename LIKE '%I%'; -- filters name containing I

SELECT * FROM emp.employee
WHERE ename LIKE '__I%'; -- filters name with i as third character

-- distinct

SELECT DISTINCT job_desc
FROM emp.employee; -- shows only distinct values without duplicates

drop database emp;