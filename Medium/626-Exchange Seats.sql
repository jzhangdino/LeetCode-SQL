select (case 
    when mod(id,2)=1 and id=(select count(*) from seat) then id
    when mod(id,2)=1 then id+1
    else id-1 end) id, student
from seat
order by id
