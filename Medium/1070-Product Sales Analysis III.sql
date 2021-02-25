select s.product_id, s.year first_year, s.quantity, s.price
from Sales s,
(select product_id, min(year) miny
from Sales
group by product_id) t
where s.product_id=t.product_id
and s.year=t.miny
