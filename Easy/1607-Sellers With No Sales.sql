select t.seller_name
from Seller t
where t.seller_id not in
(select distinct seller_id
from Orders o 
where year(sale_date)='2020') 
order by seller_name
