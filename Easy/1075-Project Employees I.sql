select project_id, round(t1.k2/t1.k1, 2) average_years
from
(select project_id, count(*) k1, sum(experience_years) k2
from Project p join Employee e
on p.employee_id = e.employee_id
group by project_id) t1
