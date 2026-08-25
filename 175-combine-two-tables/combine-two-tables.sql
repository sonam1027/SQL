select p.firstName,p.lastName,a.city,a.state
from  Address as a
right join Person as p
using(PersonId)