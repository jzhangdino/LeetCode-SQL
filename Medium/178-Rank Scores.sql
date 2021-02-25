select Score, Dense_Rank() over(order by Score DESC) as 'Rank'
from Scores
