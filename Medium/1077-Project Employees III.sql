select project_id, employee_id
from
(select p.project_id, p.employee_id, rank() over(partition by project_id order by experience_years DESC) ex
from Project p, Employee e
where p.employee_id=e.employee_id) t
where t.ex=1
