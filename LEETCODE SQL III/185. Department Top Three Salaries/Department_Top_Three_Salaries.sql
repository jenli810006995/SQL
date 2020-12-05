select d.Name as Department, e.name as Employee, Salary
from Department d
right join Employee e
on d.id = e.Department_id
where 
(select count(distinct salary)
from Employee t1
where t1.DepartmentId = d.Id and t1.Salary >= e.Salary) <= 3
and d.name is not null
order by d.Id desc;




