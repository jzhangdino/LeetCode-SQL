select u.user_id buyer_id, u.join_date, ifnull(sum(year(o.order_date)=2019),0) orders_in_2019
from Users u left join Orders o 
on u.user_id=o.buyer_id
group by u.user_id
