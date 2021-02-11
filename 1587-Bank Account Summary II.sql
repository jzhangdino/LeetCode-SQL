select name, sum(amount) balance
from Users u join Transactions t
on u.account=t.account
group by u.account
having balance >10000
