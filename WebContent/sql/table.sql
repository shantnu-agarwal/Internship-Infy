select * from user_roles;

select * from users;

update users SET enabled=1 where username= 'shan';

insert into user_roles(username,role) values("shantnu","ROLE_USER")

alter table users add email varchar(25)

alter table users modify phone_number bigint;

SELECT COUNT(user_role_id) from user_roles;