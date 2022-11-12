create table wallet(
id int not null auto_increment,
visitors_id int not null,
cash int unsigned not null default 0, 
createdAt timestamp default current_timestamp,
updatedAt datetime default current_timestamp on update current_timestamp,
constraint fk_wallet_visitores
foreign key (visitors_id) references visitors(id),  
primary key(id)
);