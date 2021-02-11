select distinct s.buyer_id
from product p, sales s
where p.product_id = s.product_id
and s.buyer_id not in
(select s.buyer_id
from product p, sales s
where p.product_id = s.product_id
and p.product_name = 'iphone')
and p.product_name = 'S8'
