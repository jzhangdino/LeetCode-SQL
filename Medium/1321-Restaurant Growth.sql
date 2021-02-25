select a.visited_on, sum(b.amount) amount, round(avg(b.amount),2) average_amount
from (select visited_on, sum(amount) amount from customer group by visited_on order by
visited_on) a
left join 
(select visited_on, sum(amount) amount from customer group by visited_on order by
visited_on) b
on datediff(a.visited_on,b.visited_on) between 0 and 6
group by a.visited_on
having count(*)=7
