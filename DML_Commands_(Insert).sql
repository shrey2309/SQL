use puma;
select * from users;

-- Insert
-- Order in which fields are to be entered (user_id, user_name, mail_id, phone, DOB, city, marital_status, sex)
insert into users values
("1001","Shrey","s@gmail.com","9836524702","2000-07-3","Delhi","Single","Male");
insert into users values
("1002","Ashish","a@gmail.com","7412589630","1998-08-23","Raipur","Single","Male");
insert into users values
("1003","Vishal","v@gmail.com","5623147890","2001-05-04","Lucknow","Single","Others");
insert into users(user_id,user_name,mail_id,phone) values
("1004","Priyanshi","a1@gmail.com","9853621470");
insert into users(user_id,user_name,mail_id,phone) values
("1005","Ayushi","b@gmail.com","9753621470");
insert into users(user_id,user_name,mail_id,phone) values
("1006","Abhay","h@gmail.com","7536982410"),
("1007","Ritika","r@gmail.com","8546971230");

-- drop databse puma

