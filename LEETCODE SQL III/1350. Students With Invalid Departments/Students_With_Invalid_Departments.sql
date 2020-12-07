select s.id as id, s.name as name
from Students s
where s.department_id not in (select d.id from Departments d)
group by 1, 2;

-- Link: https://leetcode.com/problems/students-with-invalid-departments/
