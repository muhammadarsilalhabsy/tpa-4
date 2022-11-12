-- menggunakan inner join

select p.name, count(products_id) as bestseller
from orders_detail as od
inner join products as p on (p.id = od.products_id)
group by products_id order by bestseller desc limit 3; 

-- tanpa join

-- select products_id, count(products_id) as bestseller 
-- from orders_detail group by products_id
-- order by bestseller desc limit 3;
