select e2.Name
from Employee e1, Employee e2
where e1.ManagerId=e2.Id 
group by e2.Id 
having count(e1.ManagerId)>=5
