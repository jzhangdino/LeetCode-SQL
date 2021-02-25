select a.start_id, min(b.end_id) end_id
from 
(select log_id start_id from Logs where log_id-1 not in (select * from Logs)) a,
(select log_id end_id from Logs where log_id+1 not in (select * from Logs)) b
where a.start_id<=b.end_id
group by a.start_id
