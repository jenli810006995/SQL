select d.Name as Department, e.Name as Employee, Salary
from Department d
join Employee e
on d.Id = e.DepartmentId
where (e.DepartmentId, Salary) in
(
  select DepartmentId, max(Salary) from Employee
  group by 1
)
;
-- Link: https://leetcode.com/problems/department-highest-salary/
