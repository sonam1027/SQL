# Write your MySQL query statement below
select u.name ,sum(
    case when amount  then +amount else 0 end
) as balance
from Users as u
right join Transactions as t
using (account)
group by (account)
having  balance> 10000