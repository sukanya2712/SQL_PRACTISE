create table Students(
 student_id int,
 roll_no int,
 school varchar(50)
 );

insert into students(student_id,roll_no,school) values(1,10,'john');
select * from students;
update students set roll_no = 15 where roll_no =10;
Alter table students rename column roll_no to student_rollno;
alter table students add address varchar;
ALTER TABLE students
RENAME COLUMN roll_no TO student_rollno;

ALTER TABLE students
CHANGE COLUMN roll_no student_rollno INT;

ALTER TABLE students
CHANGE COLUMN roll_no student_rollno INT;


-----------------------------------------------------------------------------------------------------------------
select first_name,last_name,gender from patients where gender = "M";
select first_name,last_name from patients where allergies IS NULL;
select first_name from patients WHERE first_name like 'c%';
select first_name,last_name  from patients where weight between 100 AND 120.
update patients set allergies='NKA' where allergies is null;
select CONCAT(first_name,' ', last_name) as full_name from patients;
select first_name,last_name,province_name from patients join province_names ON patients.province_id=province_names.province_id;
select count(patient_id) from patients where year(birth_date) is 2010;
select first_name,last_name,max(height) from patients;
select * from patients where patient_id IN(1,45,534,879,1000);
select count(patient_id) from admissions;
select * from admissions where admission_date = discharge_date;
select patient_id,count(*) as total_admissions from admissions where patient_id = 579;
-------------------------------------------------------------------------------------------------------------------
--Modify an existing table by adding, modifying, or dropping columns or constraints.
 ALTER table student add Grade int;
 select * from student;
--Deletes an existing table and all its data.
  drop table students;
--Inserts new rows into a table.
  create table student(
  student_id int,
  roll_no int,
  student_name varchar(100)
  );
  insert into student(student_id,roll_no,student_name) values(1,12,'sukanya');
--Modifies existing rows in a table.
  update student set roll_no = 15 where roll_no=12;
--Removes rows from a table.
--Deletes all rows from a table while keeping the table structure intact.
  truncate table student;

  ----------------------------------------------------------------------------------------------------------------
 -- Retrieve the names of employees in alphabetical order.
  create table Employee(
  employee_id int,
  employee_name varchar(50),
  department varchar(50),
  salary int
  );
  insert into Employee(employee_id,employee_name,department,salary) 
  values(1,'sukanya','IT',45000),(2,'vishlesha','HR',30000);
  insert into Employee(employee_id,employee_name,department,salary) 
  values(3,'Prajwal','IT',45000),(4,'Sanjana','HR',35000),(5,'vrushali','HR',50000),(6,'manali','IT',70000);
                                                                      ;
  select * from Employee;
  select employee_name from Employee order by employee_name asc;
--Retrieve the names and salaries of the first 5 highest-paid employees.
  select TOP 5 employee_name,salary from Employee ;
  select top 5 employee_name,salary from Employee order by salary desc;
--Retrieve the names of employees whose names start with the letter 'A'.
  select employee_name from Employee where employee_name LIKE 'A%';
  ---Skip first 2 data and retrieve next data from table.
   select * from Employee order by employee_name offset 2 rows;
--Do inner join on two table of your choice.
  create table department(
  department_id int,
  department_name varchar(50),
  );
  insert into department(department_id,department_name) 
  values(1,'IT'),(2,'hr');
  
  create table Employee1(
  employee_id int,
  employee_name varchar(50),
  department_id int,
  salary int
  );
  insert into Employee1(employee_id,employee_name,department_id,salary) 
  values(1,'sukanya',1,45000),(2,'vishlesha',2,30000);
  select employee_name,department_name from Employee1 inner join department ON Employee1.employee_id = department.department_id;
  
--------------------------------
