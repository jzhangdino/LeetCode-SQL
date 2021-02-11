select distinct s.product_id, p.product_name
from Sales s join Product p 
on s.product_id = p.product_id
where s.product_id not in 
(select product_id
from Sales
where sale_date not between '2019-01-01' and '2019-03-31')
