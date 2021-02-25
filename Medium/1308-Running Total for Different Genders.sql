select * from
(select s1.gender, s1.day, sum(s2.score_points) total
from Scores s1, Scores s2
where s1.gender='F' and s2.gender='F'
and s1.day>=s2.day
group by s1.day 
union 
select s1.gender, s1.day, sum(s2.score_points) total
from Scores s1, Scores s2
where s1.gender='M' and s2.gender='M'
and s1.day>=s2.day
group by s1.day) a 
order by gender, day
