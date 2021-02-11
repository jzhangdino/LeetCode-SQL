select p.product_name, sum(o.unit) unit
from Products p
join Orders o
on p.product_id = o.product_id
where o.order_date like '2020-02%'
group by p.product_name
having unit>=100
