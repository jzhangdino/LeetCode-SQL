select v.customer_id customer_id, count(v.visit_id) count_no_trans
from Visits v left join Transactions t 
on v.visit_id=t.visit_id
where transaction_id is null
group by v.customer_id
