
select * from user_roles;


select * from users;

select * from inventory order by time_added desc;
select sum(item_quantity) from inventory;
select * from images;

select * from cart order by transaction_time desc;

select * from inventory,images where inventory.item_ID = images.item_ID and inventory.category='furniture';

update users set address="NEW" where username='user1';

-- insert into inventory(item_name,item_price,item_quantity,item_info,seller_username) values('Samsung Fridge',99889,5,'this is some info about the fridge','ss');

-- ALTER TABLE inventory DROP COLUMN sub_category;

ALTER TABLE users ADD cart_items INT DEFAULT 0;

-- alter table users add address VARCHAR(200) default "NOT AVAILABLE";-- 

-- alter table inventory modify item_name varchar(100);

-- insert into user_roles(username,role) values('admin','ROLE_ADMIN');

SELECT * from users,user_roles where (user_roles.role='ROLE_SELLER') and users.username = user_roles.username;

-- insert into user_roles(username,role) VALUes("user","ROLE_USER");

show DATABASES;

update users SET enabled=1 where username= 'shan';

insert into user_roles(username,role) values("shantnu","ROLE_USER");

alter table cart add cart_time DATETIME;

alter table images modify image_name varchar(75);

SELECT COUNT(user_role_id) from user_roles;

SELECT cart_items from users where username='user1';

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
    PRIMARY KEY (item_id),
    UNIQUE KEY(item_name)
    
);

CREATE TABLE images(
	image_ID INT NOT null AUTO_INCREMENT,
    item_ID INT,
    image_url VARCHAR(200),
    image_name VARCHAR(30),
    time_added DATETIME,
    PRIMARY KEY (image_ID),
    FOREIGN KEY (item_ID) REFERENCES inventory(item_ID)
);

CREATE TABLE cart(
	transaction_ID INT NOT NULL AUTO_INCREMENT,
    item_ID INT,
    quantity INT,
    username varchar(45),
    address varchar(75),
    cart_time datetime,
    transaction_time datetime,
	transaction_status VARCHAR(25) default 'NOT DONE',
    PRIMARY KEY (transaction_ID),
    FOREIGN KEY (item_ID) REFERENCES inventory(item_ID)
);


-- CREATE TABLE transactions(
-- 	t_ID int NOT NULL AUTO_INCREMENT,
--     username varchar(25),
--     t_time DATETIME,
--     
--     

-- );