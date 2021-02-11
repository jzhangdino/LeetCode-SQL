select s.id, s.name
from Departments d 
right join Students s 
on d.id=s.department_id
where d.id is null
