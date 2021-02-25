select activity
from Friends group by activity 
having count(*) not in
((select count(*) from Friends group by activity order by count(*) DESC limit 1),
(select count(*) from Friends group by activity order by count(*) limit 1))
