select t.team_id, t.team_name, ifnull(sum(score),0) num_points
from 
(select m.host_team team, 
    case when host_goals>guest_goals then 3
    when host_goals=guest_goals then 1
    else 0 end score 
from Matches m
union all
select m.guest_team team, 
    case when host_goals>guest_goals then 0
    when host_goals=guest_goals then 1
    else 3 end score
from Matches m) t1
right join Teams t on t.team_id=t1.team
group by t.team_id
order by num_points DESC, t.team_id
