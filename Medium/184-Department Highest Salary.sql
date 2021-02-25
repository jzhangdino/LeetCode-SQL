SELECT d.Name Department,t1.Name Employee,t1.Salary
from 
(SELECT Name,dense_rank() over(partition by DepartmentId order by Salary DESC) as s,Salary,DepartmentId
from Employee e) t1
join Department d on t1.DepartmentId=d.Id
where s=1
