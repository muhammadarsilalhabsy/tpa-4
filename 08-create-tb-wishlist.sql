create table wishlist(
id int not null auto_increment,
visitors_id int not null,
products_id varchar(5) not null,
createdAt timestamp default current_timestamp,
updatedAt datetime default current_timestamp on update current_timestamp,
constraint fk_wishlist_visitors
foreign key (visitors_id) references visitors(id),
constraint fk_wishlist_products
foreign key (products_id) references products(id),
primary key(id)
)