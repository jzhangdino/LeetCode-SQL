select round(count(distinct(a1.player_id))/(select count(distinct(player_id)) from Activity),2) fraction
from Activity a1
where (a1.player_id, a1.event_date) in 
(select player_id, date(min(event_date)+1)
from Activity
group by player_id)
