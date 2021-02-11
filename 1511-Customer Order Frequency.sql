select c.customer_id, c.name
from Customers c 
join Orders o 
join Product p 
on c.customer_id = o.customer_id and p.product_id=o.product_id
where order_date like '2020-07%'
and c.customer_id in
    (select c.customer_id
    from Customers c 
    join Orders o 
    join Product p 
    on c.customer_id = o.customer_id and p.product_id=o.product_id
    where order_date like '2020-06%'
    group by c.customer_id
    having sum(price*quantity)>=100) 
group by c.customer_id
having sum(price*quantity)>=100
