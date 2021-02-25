select sum(TIV_2016) TIV_2016
from insurance i 
where i.TIV_2015 in (select TIV_2015 from insurance group by TIV_2015 having count(*)>1)
and concat(i.LAT, i.LON) not in (select concat(LAT, LON) from insurance group by concat(LAT, LON) having count(*)>=2)
