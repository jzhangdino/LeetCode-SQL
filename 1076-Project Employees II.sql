select project_id
from Project  
group by project_id
having count(*) >=
(select count(*)
from Project p 
group by p.project_id
order by count(*) DESC
limit 1)
