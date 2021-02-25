SELECT date_format(tmp.trans_date,'%Y-%m') as month,
       tmp.country,
       sum(case when state = 'approved' then 1 else 0 end) as approved_count,
       sum(case when state = 'approved' then tmp.amount else 0 end) as approved_amount,
       sum(case when state = 'chargeback' then 1 else 0 end) as chargeback_count,
       sum(case when state = 'chargeback' then tmp.amount else 0 end) as chargeback_amount 
FROM
(SELECT * from transactions
 UNION ALL
 SELECT t1.id, t1.country, 'chargeback'as state, t1.amount,c1.trans_date 
 FROM chargebacks c1
 LEFT JOIN transactions t1
 ON c1.trans_id = t1.id) as tmp
GROUP BY month,country
HAVING approved_count>0 OR chargeback_count>0
