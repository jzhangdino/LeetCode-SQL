select ifnull(round(sum(c2)/count(c1),2),0) average_sessions_per_user
from 
(select user_id c1, count(distinct session_id) c2
from Activity
where datediff('2019-07-27', activity_date) < 30
group by user_id) t1
