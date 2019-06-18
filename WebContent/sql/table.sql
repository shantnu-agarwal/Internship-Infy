select * from user_roles;

select * from users;

select * from sellers;



insert into user_roles(username,role) VALUes("user","ROLE_USER");

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

show DATABASES;

update users SET enabled=1 where username= 'shan';

insert into user_roles(username,role) values("shantnu","ROLE_USER")

alter table users add email varchar(25)

alter table users modify phone_number bigint;

SELECT COUNT(user_role_id) from user_roles;