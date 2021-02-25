SELECT login_date ,COUNT(user_id) AS user_count  
FROM (
    SELECT MIN(activity_date) AS login_date ,user_id
    FROM Traffic 
    WHERE activity  = 'login'
    GROUP BY user_id
    HAVING DATEDIFF('2019-06-30',login_date)<=90
) AS temp
GROUP BY login_date
