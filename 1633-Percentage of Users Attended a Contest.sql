select r.contest_id, round(100*count(distinct r.user_id)/(select count(distinct user_id) from Users),2) percentage
from Register r 
group by r.contest_id
order by percentage DESC, r.contest_id
