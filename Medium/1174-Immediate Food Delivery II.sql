select round(sum(d.order_date=d.customer_pref_delivery_date)/count(distinct customer_id)*100,2) immediate_percentage
from Delivery d 
where (customer_id, order_date) in 
(select customer_id,min(order_date)
from Delivery 
group by customer_id)
