-- select od.products_id, p.price, sum(od.quantity), (p.price * sum(od.quantity) ) as total 
-- from orders_detail as od
-- inner join products as p on (p.id = od.products_id) 
-- group by products_id order by total desc;

-- potensial benar
select avg(total) from (select od.products_id, p.price, sum(od.quantity), (p.price * sum(od.quantity) ) as total 
from orders_detail as od
inner join products as p on (p.id = od.products_id) 
group by products_id order by total desc) as tb_od_join_p;