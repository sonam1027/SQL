select p.product_name,sum(
case when o.product_id then + o.unit end) as unit
from Orders as o
left join Products as p
using(product_id)
where order_date between '2020-02-1' and '2020-02-29'
group by p.product_name
having sum(unit)>=100
