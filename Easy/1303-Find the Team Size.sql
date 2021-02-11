select e.employee_id, t.team_size
from Employee e join
(select team_id, count(*) team_size
from Employee
group by team_id) t
on e.team_id=t.team_id
