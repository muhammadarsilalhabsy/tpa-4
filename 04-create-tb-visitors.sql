create table visitors(
id int not null auto_increment,
name varchar(50) not null,
email varchar(50) not null,
role_id varchar(5),
createdAt timestamp default current_timestamp,
updatedAt datetime default current_timestamp on update current_timestamp,
unique key email_unique (email),
constraint fk_visitors_role
foreign key (role_id) references roles(id),  
primary key(id)
);

-- alter table visitors
-- add constraint email_unique unique(email)