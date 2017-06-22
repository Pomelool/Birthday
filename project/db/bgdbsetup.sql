create database bgdb;
use bgdb;
create table user(
	user_id int primary key not null auto_increment,
    username varchar(255) not null,
    password varchar(255) not null,
    firstname varchar(255) not null,
    lastname varchar(255) not null,
    dob date not null,
    address varchar(255) not null,
    email varchar(255) not null,
    active int,
    created date,
    avatar varchar(255)	
);

create table post(
	post_id int primary key not null auto_increment,
    author_id int not null,
    amazon_link varchar(255) not null,
    title varchar(255) not null,
    description varchar(255),
    amount_goal float not null,
    amount_real float not null,
    created date,
    purpose varchar(255),
    status_type varchar(255)
); 


create table donations(
	donation_id int primary key not null auto_increment,
    user_id int not null,
    post_id int not null,
    amount int not null,
    dtime datetime
);

create table friends(
	friend_id int primary key not null,
    user_id1 int not null,
    user_id2 int not null,
    relationship varchar(255) not null

);

create table purposes(
	ptype varchar(255) primary key not null 
);

create table status_types(
	stype varchar(255) primary key not null
);

create table relationships(
	rtype varchar(255) primary key not null
);

insert into purposes
values('birthday');

insert into status_types
values('active'),
('completed'),
('approved'),
('delivered'),
('failed'),
('cancelled');

insert into relationships
values('friend'),
('favorite'),
('blocked');

ALTER TABLE post
ADD FOREIGN KEY (status_type) REFERENCES status_types(stype);
ALTER TABLE post
ADD FOREIGN KEY (purpose) REFERENCES purposes(ptype);
ALTER TABLE post
ADD FOREIGN KEY (author_id) REFERENCES user(user_id);

ALTER TABLE donations
ADD FOREIGN KEY (user_id) REFERENCES  user(user_id);
ALTER TABLE donations
ADD FOREIGN KEY (post_id) REFERENCES post(post_id);

ALTER TABLE friends
ADD FOREIGN KEY (user_id1) REFERENCES user(user_id);
ALTER TABLE friends
ADD FOREIGN KEY (user_id2) REFERENCES user(user_id);
ALTER TABLE friends
ADD FOREIGN KEY (relationship) REFERENCES relationships(rtype);

