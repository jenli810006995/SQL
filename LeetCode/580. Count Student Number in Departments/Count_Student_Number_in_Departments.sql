select d.dept_name as dept_name, ifnull(student_number, 0) as student_number
from department d
left join
(
  select *, count(student_id) as student_number
  from student
  group by dept_id
) x

on d.dept_id = x.dept_id
group by 1
order by 2 desc, 1 asc;

-- Link: https://leetcode.com/problems/count-student-number-in-departments/
