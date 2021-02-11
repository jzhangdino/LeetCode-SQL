select distinct c.title
from TVProgram t 
join Content c 
on t.content_id = c.content_id
where c.content_type='Movies'
and t.program_date like '2020-06%'
and c.Kids_content='Y'
