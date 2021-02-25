select substr(trans_date,1,7) month, country, count(id) trans_count, sum(state='approved') approved_count, sum(amount) trans_total_amount, sum(if(state='approved',1,0)*amount) approved_total_amount
from Transactions
group by substr(trans_date,1,7), country
