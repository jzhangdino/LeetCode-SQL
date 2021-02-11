select w2.id
from Weather w1 join Weather w2
where w1.Temperature < w2.Temperature
and Datediff(w1.recordDate, w2.recordDate)=-1
