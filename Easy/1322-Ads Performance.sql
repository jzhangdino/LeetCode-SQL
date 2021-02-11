select ad_id,
ifnull(round(sum(action="Clicked")/sum(action<>"Ignored")*100,2),0.00) as ctr
from ads
group by ad_id
order by ctr desc,ad_id
