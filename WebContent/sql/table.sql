select * from user_roles;

select * from users;

--  ALTER TABLE users add status varchar(10);

insert into user_roles(username,role) values('admin','ROLE_ADMIN');

SELECT * from users,user_roles where (user_roles.role='ROLE_SELLER') and users.username = user_roles.username;


insert into user_roles(username,role) VALUes("user","ROLE_USER");


show DATABASES;

update users SET enabled=1 where username= 'shan';

insert into user_roles(username,role) values("shantnu","ROLE_USER");

alter table users modify phone_number bigint;

SELECT COUNT(user_role_id) from user_roles;


create table sellers(
id int NOT NULL AUTO_INCREMENT,
username varchar(50),
sellername varchar(50),
password varchar(50),
email varchar(50),
phone_number bigint,
PRIMARY KEY (id));

CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username));
