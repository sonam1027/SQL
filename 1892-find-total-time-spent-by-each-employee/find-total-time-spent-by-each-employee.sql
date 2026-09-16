# Write your MySQL query statement below
select event_day as day,emp_id,sum(
case when emp_id then out_time-in_time end) as total_time
from Employees
group by event_day,emp_id