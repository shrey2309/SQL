use puma;

update users set user_name = 'Mishra' where user_id = '1002';
update users set user_name = 'Vaibhav' , mail_id = 'vaibhi@gmail.com' where user_id = '1003';

update users set user_name = 'Shobhit' where user_name = 'Abhay' and mail_id = 'h@gmail.com';
select * from users;

delete from users where user_id = '1004';
delete from users where user_name = 'Ayushi' and mail_id = 'b@gmail.com';
select * from users;

-- Truncate
truncate table users;
-- Won't work as users table has a column which references as a foreign key in another table




