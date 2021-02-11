select a2.player_id, a2.device_id
from Activity a2 join
(select a.player_id id, min(a.event_date) firstdate
from Activity a
group by a.player_id) k
on a2.player_id = k.id and a2.event_date=k.firstdate
