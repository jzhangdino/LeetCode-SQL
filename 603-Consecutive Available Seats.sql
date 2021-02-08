select distinct(seat_id) seat_id
from 
(select 
a.*,lead(free,1) over() next_free,lag(free,1) over() last_free
from cinema a) aa
where free =1 and (next_free =1 or last_free =1)
order by seat_id
