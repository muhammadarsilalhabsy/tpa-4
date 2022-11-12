
-- memulai transaksi
start transaction; 

-- menambahkan orders id
insert into orders (visitors_id) values
(8);

-- menambahkan orders detail
insert into orders_detail (products_id, order_id, quantity) values 
("P0010", 7, 1),
("P0008", 7, 2),
("P0007", 7, 2);

-- update wallet
update wallet 
set cash = cash - (
select (
		(
		select (
		(select price from products where id = 'P0010') * 
		(select sum(quantity) from 
		(select * from orders_detail 
		where products_id = 'P0010' and order_id = 7) as total_quantity)) 
		)
		+
		(
		select (
		(select price from products where id = 'P0008') * 
		(select sum(quantity) from 
		(select * from orders_detail 
		where products_id = 'P0008' and order_id = 7) as total_quantity)) 
		)
		+
		(
		select (
		(select price from products where id = 'P0007') * 
		(select sum(quantity) from 
		(select * from orders_detail 
		where products_id = 'P0007' and order_id = 7) as total_quantity)) 
		)
) as total_price)
where id = 8;

-- update quantity products id 'P0010'
update products
set quantity = quantity - 
(select sum(quantity) from 
(select * from orders_detail 
where products_id = 'P0010' and order_id = 7)
as total_quantity)
where id = 'P0010';

-- update quantity products id 'P0008'
update products
set quantity = quantity - 
(select sum(quantity) from (select * from orders_detail 
where products_id = 'P0008' and order_id = 7) 
as total_quantity)
where id = 'P0008';

-- update quantity products id 'P0007'
update products
set quantity = quantity - 
(select sum(quantity) from (select * from orders_detail 
where products_id = 'P0007' and order_id = 7 )
as total_quantity)
where id = 'P0007';

-- menyelsaikan transaksi
commit;
