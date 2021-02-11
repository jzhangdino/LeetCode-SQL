select name, sum(rest) rest, sum(paid) paid, sum(canceled) canceled, sum(refunded) refunded
from Invoice i join Product p 
on i.product_id = p.product_id
group by name
order by name
