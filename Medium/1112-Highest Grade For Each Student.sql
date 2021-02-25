select student_id, course_id, grade
from
(select e.*,
    rank() over(partition by student_id order by grade DESC, course_id) dd
from Enrollments e) t1
where dd=1
