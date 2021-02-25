select t.followee follower, count(distinct follower) num
from follow t
where t.followee in (select distinct follower from follow)
group by t.followee
order by t.followee
