select c1.Name
from Candidate c1 join
(select v.CandidateId
from Candidate c, Vote v 
where c.id=v.CandidateId 
group by v.CandidateId  
order by count(*) DESC
limit 1) t1
on c1.id=t1.CandidateId
