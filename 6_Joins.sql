# Defining the dataset created in the above file
use gfg;

#1 Left Join
select * from employees;
select * from salaries;
select * from employees left join salaries 
	   on employees.EmployeeID = salaries.EmployeeID;
        
-- Selecting only some columns
select employees.EmployeeID , employees.FirstName , employees.LastName , salaries.salary 
       from employees left join salaries 
       on employees.EmployeeID = salaries.EmployeeID;
       
       
#2 Right Join
select * from employees;
select * from salaries;
select * from employees right join salaries 
	    on employees.EmployeeID = salaries.EmployeeID;

-- Selecting only some columns
select employees.EmployeeID , employees.FirstName , employees.LastName , salaries.salary 
       from employees right join salaries 
       on employees.EmployeeID = salaries.EmployeeID;
       

#3 Inner Join
select * from employees;
select * from department;
select * from employees t1 inner join department t2
       on t1.DepartmentID = t2.DepartmentID ;
       
-- Joining different columns from all tables(FirstName , LastName , DepartmentName , Salary)
select t1.FirstName , t1.LastName , t2.DepartmentName , t3.salary 
       from employees t1 inner join department t2
       on t1.DepartmentID = t2.DepartmentID 
	   inner join salaries t3
       on t1.EmployeeID = t3.EmployeeID;
       
 
#4 Cross Join
select * from employees;
select * from department;
select * from employees cross join department; 
select count(*) from employees cross join department;  

-- Cross Join all three tables
select * from employees;
Select * from department;
select * from salaries;
select * from employees cross join department cross join salaries;
select count(*) from employees cross join department cross join salaries;



