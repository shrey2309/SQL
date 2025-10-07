create database if not exists puma;
create table if not exists puma.users (user_id varchar(30) primary key,
 user_name varchar(30) not null, 
 mail_id varchar(20) unique not null, 
 phone varchar(20) unique not null, 
 DOB date, 
 city varchar(20), 
 marital_status varchar(20), 
 sex varchar(10) check(sex in('male','female','others')));
create table if not exists puma.inventory (product_id varchar(20)primary key,
product_name varchar(30) not null,
quantity int,
category varchar(30),
marked_price decimal(10,2) check(marked_price > 0),
discounted_price decimal(10,2) check(discounted_price > 0),
manufacturer varchar(50),
date_of_manufacture date,
batch_number int,
expiry_date date);
create table if not exists puma.transactions (transaction_id varchar(30) primary key,
user_id varchar(30),
product_id varchar(20),
amount decimal(10,2) check(amount>0),
mode_of_payment varchar(50) check(mode_of_payment in('cash','card','upi','online wallet')),
date_time datetime,
foreign key (user_id) references puma.users(user_id),
foreign key (product_id) references puma.inventory(product_id));

-- drop database if exists puma ;
