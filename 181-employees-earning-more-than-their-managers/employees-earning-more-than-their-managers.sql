select  e1.name as Employee
from Employee as e1
join Employee as m1
on e1.managerId=m1.id
where m1.salary<e1.salary