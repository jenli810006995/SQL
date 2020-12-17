select d.Name as Deparmtnet, e.Name as Employee, Salary
from Department d
join Employee e
on e.DepartmentId = d.Id
where 3 > (select count(distinct salary) from Employee e2
where e2.salary > e.salary and e2.DepartmentId = e.DepartmentId)
-- Link: https://leetcode.com/problems/department-top-three-salaries/
