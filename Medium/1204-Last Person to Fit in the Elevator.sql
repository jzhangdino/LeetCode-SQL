select a.person_name
from Queue a, Queue b 
where a.turn>=b.turn
group by a.turn 
having sum(b.weight)<=1000
order by a.turn DESC
limit 1
