select min(round(sqrt(power(t1.x-t2.x,2)+power(t1.y-t2.y,2)),2)) shortest
from point_2d t1, point_2d t2
where (t1.x, t1.y)!=(t2.x,t2.y)
