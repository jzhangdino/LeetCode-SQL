select round(
(select count(delivery_id)
from Delivery
where order_date = customer_pref_delivery_date)/(select distinct count(delivery_id)from Delivery)*100, 2) immediate_percentage
