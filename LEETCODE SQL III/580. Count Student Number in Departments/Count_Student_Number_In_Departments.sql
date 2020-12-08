with student_cnt as
(
  select dept_id,
         count(student_id) as student_number
  from student 
  group by 1
)

select d.dept_name,
       ifnull(s.student_number, 0) as student_number
from department d -- bc even there is no student the dept_name should be listed
left join student_cnt s
on d.dept_id = s.dept_id
group by 1
order by 2 desc, 1 asc;

