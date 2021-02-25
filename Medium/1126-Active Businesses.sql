select e.business_id
from Events e join 
(select event_type, avg(occurences) a
from Events
group by event_type) t1
on e.event_type=t1.event_type
where e.occurences>t1.a 
group by e.business_id
having count(*)>=2
