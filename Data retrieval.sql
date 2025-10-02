-- Retrieving data from SQL
create database employee;
use employee;
create table employee_details(
emp_id varchar(8),
emp_name varchar(20),
emp_designation varchar(20),
emp_age int);
insert into employee_details values ('12', 'Pradeep', "Manager", 40);
insert into employee_details values ('13', 'Ram', "GEneral Manager", 35);
select * from employee_details;

select * from employee_details
where emp_name= 'Pradeep';
select * from employee_details 
where not  emp_name= 'Pradeep';
 select * from employee_details 
 where emp_designation= 'GEneral Manager' and emp_designation= 'Manager';
 
