(select u.name as results
from Movie_Rating as m
left join users as u
on m.user_id=u.user_id
group by m.user_id
order by count(*) desc,u.name
limit 1)
union
(select mo.title
from Movie_Rating as m
left join movies as mo
on m.movie_id=mo.movie_id
where m.created_at like "2020-02%"
group by mo.movie_id
order by avg(m.rating) desc,mo.title
limit 1)
