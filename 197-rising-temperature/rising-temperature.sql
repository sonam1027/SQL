select w2.id
from Weather as w1
join weather as w2
on w1.recordDate=date_sub(w2.recordDate, interval 1 day) 
where w1.temperature<w2.temperature
