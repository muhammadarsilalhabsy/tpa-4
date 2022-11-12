-- menggunakan inner join
select c.name, count(category_id) as amount
from products as p 
inner join categories as c on (c.id = p.category_id)
group by category_id order by amount desc limit 3;

-- tanpa join
-- select category_id, count(category_id) as amount 
-- from products as p group by category_id order by amount desc limit 3;