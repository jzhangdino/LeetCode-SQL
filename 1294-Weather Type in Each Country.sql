select c.country_name, 
    case when avg(weather_state)<=15 then 'Cold'
        when avg(weather_state)>=25 then 'Hot'
        else 'Warm'
    end weather_type
from Weather w join Countries c
on w.country_id=c.country_id
where w.day between '2019-11-01' and '2019-11-30'
group by c.country_name
