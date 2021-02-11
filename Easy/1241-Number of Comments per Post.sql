select s.sub_id post_id, count(distinct p.sub_id) number_of_comments
from Submissions s 
left join Submissions p
on s.sub_id = p.parent_id
where s.parent_id is null
group by s.sub_id
order by s.sub_id
