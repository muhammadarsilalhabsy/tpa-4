select * from orders_detail od;
select * from products p ;

select od.products_id, p.price, sum(od.quantity), (p.price * sum(od.quantity)) 
from orders_detail as od
inner join products as p on (p.id = od.products_id) 
group by products_id;

select p.id, p.price, od.quantity 
from orders_detail as od
inner join products as p on (p.id = od.products_id);



-- group by products_id;