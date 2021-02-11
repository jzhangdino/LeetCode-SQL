select query_name, round(sum(rating/position)/count(*),2) quality,
round(100*sum(if(rating<3,1,0))/count(*),2) poor_query_percentage
from Queries
group by query_name
