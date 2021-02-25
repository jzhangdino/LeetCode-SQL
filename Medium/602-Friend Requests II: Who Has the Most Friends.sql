select id, sum(num) num
from
((select accepter_id id, count(*) num
from request_accepted
group by accepter_id)
union all
(select requester_id id, count(*) num
from request_accepted
group by requester_id)) t1
group by id
order by num desc
limit 1
