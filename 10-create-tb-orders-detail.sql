create table orders_detail (
products_id varchar(5) not null,
order_id int not null,
quantity int unsigned not null default 1,
createdAt timestamp default current_timestamp,
updatedAt datetime default current_timestamp on update current_timestamp,
constraint fk_od_products
foreign key (products_id) references products(id),
constraint fk_od_orders
foreign key (order_id) references orders(id),
primary key (products_id, order_id)
);
