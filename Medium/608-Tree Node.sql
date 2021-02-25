select distinct id, 
    case when p_id is not null and s_id is null then 'Leaf'
    when p_id is not null and s_id is not null then 'Inner'
    else 'Root' end as 'Type'
from
(select t1.*, t2.id s_id
from tree t1 left join tree t2
on t1.id = t2.p_id) t
