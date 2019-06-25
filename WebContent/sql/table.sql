select * from user_roles;

select * from users;

select * from inventory;

insert into inventory(item_name,item_price,item_quantity,item_info,seller_username) values('Samsung Fridge',99889,5,'this is some info about the fridge','ss');
-- ALTER TABLE users add added_by varchar(10);

insert into user_roles(username,role) values('admin','ROLE_ADMIN');

SELECT * from users,user_roles where (user_roles.role='ROLE_SELLER') and users.username = user_roles.username;

insert into user_roles(username,role) VALUes("user","ROLE_USER");

show DATABASES;

update users SET enabled=1 where username= 'shan';

insert into user_roles(username,role) values("shantnu","ROLE_USER");

alter table inventory add time_updated DATETIME;

SELECT COUNT(user_role_id) from user_roles;

CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username));
  
  create table inventory(
	item_name VARCHAR(20) NOT NULL,
    item_price INT,
    item_quantity INT,
    item_info VARCHAR(1000),
    image_url VARCHAR(150),
    item_ID INT NOT NULL AUTO_INCREMENT,
    category varchar(30),
    time_added DATETIME,
    seller_username VARCHAR(25),
    PRIMARY KEY (item_id)
    
    
);