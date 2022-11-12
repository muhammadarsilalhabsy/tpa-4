create table orders (
id int not null auto_increment,
visitors_id int not null,
createdAt timestamp default current_timestamp,
constraint fk_orders_visitors
foreign key (visitors_id) references visitors(id),
primary key(id)
);

drop table orders;