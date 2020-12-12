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



with max_min as
(
       select student_id,
              dense_rank() over(partition by exam_id order by score desc) as first_student,
              dense_rank() over(partition by exam_id order by score) as last_student
       from Exam
)

select s.student_id, s.student_name
from max_min m
left join
Student s
on m.student_id = s.student_id
where m.student_id not in
(
       select student_id from max_min where first_student = 1 or last_student = 1
)
group by 1
order by 1;


       
       

