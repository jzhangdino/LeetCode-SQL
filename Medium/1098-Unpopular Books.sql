select b.book_id, b.name
from Books b left join Orders o 
on b.book_id=o.book_id 
and o.dispatch_date>='2018-06-23'
where datediff('2019-06-23',b.available_from)>31
group by b.book_id
having ifnull(sum(o.quantity),0)<10
