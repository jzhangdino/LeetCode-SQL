select a.player_id, min(event_date) first_login
from Activity a
group by a.player_id
