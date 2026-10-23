select s.student_id,s.student_name,sp.subject_name,count(e.subject_name) as attended_exams
from Students as s
cross join Subjects as sp
left join Examinations as e
on s.student_id=e.student_id and
sp.subject_name=e.subject_name
group by sp.subject_name,s.student_id
order by  s.student_id,sp.subject_name




