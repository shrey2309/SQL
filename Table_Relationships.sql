-- Types of relationships in sql

-- 1. One to One Relationship

create table Users (
    UserID int primary key,
    UserName varchar(100)
);

create table UserProfiles (
    ProfileID int primary key,
    UserID int unique,
    Bio text,
    foreign key (UserID) references Users(UserID)
);
insert into Users values 
(1, 'Akash'), 
(2, 'Chandan');

insert into UserProfiles values 
(101, 1, 'Loves sketcing'), 
(102, 2, 'Enjoys traveling');
select u.UserID, u.UserName, p.Bio
from Users u
join UserProfiles p on u.UserID = p.UserID;

-- 2. One to Many Relationship

create table Departments (
    DeptID int primary key,
    DeptName varchar(100)
);

create table Employees (
    EmpID int primary key,
    EmpName varchar(100),
    DeptID int,
    foreign key (DeptID) references Departments(DeptID)
);
insert into Departments values
(1, 'HR'), 
(2, 'Engineering');

insert into Employees values 
(201, 'John', 1), 
(202, 'Emma', 2), 
(203, 'David', 2);
select d.DeptName, e.EmpName
from Departments d
join Employees e on d.DeptID = e.DeptID;

-- Many to many relationship

create table Students (
    StudentID int primary key,
    StudentName varchar(100)
);

create table Courses (
    CourseID int primary key,
    CourseName varchar(100)
);

create table Enrolments (
    StudentID int,
    CourseID int,
    EnrolmentDate date,
    primary key (StudentID, CourseID),
    foreign key (StudentID) references Students(StudentID),
    foreign key (CourseID) references Courses(CourseID)
    
);
insert into Students values 
(1, 'Shrey'), 
(2, 'Ravi');

insert into Courses values 
(101, 'Mathematics'), 
(102, 'Physics');

insert into Enrolments values
(1, 101, '2024-01-10'), 
(1, 102, '2024-02-15'), 
(2, 101, '2024-01-12');
select s.StudentName, c.CourseName, e.EnrolmentDate
from Enrolments e
