select round(avg(ratio),2) average_daily_percent
from
(select a.action_date, count(distinct r.post_id)/count(distinct a.post_id)*100 ratio
from Actions a left join Removals r 
on a.post_id=r.post_id
where a.extra='spam'
group by a.action_date) t1
