select ifnull(max(Salary),null) as SecondHighestSalary
from Employee e
where e.Salary < (select max(Salary) from Employee)
