create database employee;
show databases;
create table departments(
department_id int,
department_name varchar(50));
use departments;
show tables;
desc departments;
use employee;
create table employees(employee_id int,employee_name varchar(50),gender enum('M','F'),age int,hire_date date,designation varchar(100),department_id int,location_id int,salary decimal(10,2));
DESC EMPLOYEES;
CREATE TABLE  location(location_id int,location varchar(30));
desc location;
alter table employees
add email varchar(50);
desc employees;
alter table employees
modify designation varchar(225);
desc employees;
alter table employees
drop column age;
desc employees;
alter table employees
rename column hire_date to date_of_joining;
desc employees;
rename table departments to departments_info;
rename table location to locations;
truncate employees;
desc employees;
drop table employees;

drop database employee;
desc employees;
drop database if exists employee;
create database employee;
use employee;
create table departments(
department_id int primary key,
department_name varchar(100) not null unique);
desc departments;
select * from departments;
create table location(
location_id int auto_increment primary key,
location_name varchar(100) not null unique);
desc location;
select * from location;
create table employees(
employee_id int primary key,
employee_name varchar(50) not null,
gender enum('M','F'),
age int check(age>=18),
hire_date date default (current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),

foreign key (department_id)
references departments(department_id),

foreign key(location_id)
references location(location_id)
);
desc employees;
select * from employees;








