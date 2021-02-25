select d.dept_name, ifnull(count(student_name),0) student_number
from department d left join student s 
on d.dept_id=s.dept_id
group by d.dept_id
order by student_number desc, dept_name
