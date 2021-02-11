select o.customer_number
from orders o
group by o.customer_number
order by count(*) DESC
limit 1
