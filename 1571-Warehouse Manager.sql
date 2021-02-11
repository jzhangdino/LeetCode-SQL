select w.name warehouse_name, sum(units*(Width*Length*Height)) volume
from Warehouse w join Products p 
on w.product_id=p.product_id
group by w.name
