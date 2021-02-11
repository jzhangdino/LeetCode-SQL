select '[0-5>' bin, count(session_id) total
from Sessions
where duration/60<5
union
select '[5-10>' bin, count(session_id) total
from Sessions
where duration/60<10 and duration/60>=5
union
select '[10-15>' bin, count(session_id) total
from Sessions
where duration/60<15 and duration/60>=10
union
select '15 or more' bin, count(session_id) total
from Sessions
where duration/60>=15
