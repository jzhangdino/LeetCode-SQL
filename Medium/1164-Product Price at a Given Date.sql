select distinct p.product_id, ifnull(t1.new_price,10) price
from Products p left join
(select product_id, new_price,
 rank() over(partition by product_id order by change_date DESC) r 
from Products
where change_date<='2019-08-16') t1
on p.product_id=t1.product_id
and r=1
