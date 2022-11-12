create table products (
id varchar(5) not null,
name varchar(50) not null,
category_id varchar(5),
description text,
price int unsigned not null,
quantity int unsigned not null default 0,
createdAt timestamp default current_timestamp,
updatedAt datetime default current_timestamp on update current_timestamp,
constraint price_check check (price > 500),
constraint fk_products_categories
foreign key (category_id) references categories(id),  
primary key(id)
);
