select *,
if(t.x+t.y>t.z and t.x+t.z>t.y and t.y+t.z>t.x, 'Yes', 'No') triangle
from triangle t
