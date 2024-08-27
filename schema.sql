
Create table departments(
id serial,
dept_no  varchar(20)NOT NULL,
dept_name varchar(30)NOT NULL,
primary key (dept_no)
);
select * from departments

create table salaries(
id serial, 
emp_no INT, 
salary INT,
PRIMARY KEY (emp_no)
); 

select * from salaries

drop table title;

create table title(
id serial,
emp_title varchar (20), 
title varchar(255), 
primary key (emp_title)
); 

select * from title

create table employeesss(
id serial,
emp_no INT,
emp_title varchar(30),
birth_date varchar(30), 
first_name varchar(255) NOT NULL,
last_name varchar(255) NOT NULL,
sex varchar(30), 
hire_date varchar(30),
primary key (emp_no),
FOREIGN KEY (emp_title) REFERENCES title(emp_title)
); 

select * from employees

CREATE TABLE dept_empp(
id serial primary key, 
emp_no INT NOT NULL, 
dept_no varchar(20),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employeesss(emp_no)
); 

select * from dept_emp

create table dept_manager(
id serial,
dept_no varchar(20) NOT NULL, 
emp_no INT, 
primary key (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments
);


