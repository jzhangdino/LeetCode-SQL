select machine_id, round(avg(period),3) processing_time
from
(select a1.machine_id, a1.process_id, abs(a1.timestamp-a2.timestamp) period
from Activity a1 join Activity a2
on a1.machine_id=a2.machine_id and a1.process_id=a2.process_id
and a1.activity_type != a2.activity_type
group by a1.machine_id, a1.process_id) t
group by machine_id
