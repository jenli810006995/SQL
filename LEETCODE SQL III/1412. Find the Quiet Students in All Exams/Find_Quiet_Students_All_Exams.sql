with high_low as
(
select student_id,
       rank() over(partition by exam_id order by score desc) as first_student,
       rank() over(partition by exam_id order by score asc) as last_student
from Exam
)

select h.student_id as student_id, s.student_name as student_name
from high_low h
left join Student s
on h.student_id = s.student_id
where h.student_id not in (select student_id from high_low where first_student = 1 or last_student = 1)
group by student_id
order by student_id
;



