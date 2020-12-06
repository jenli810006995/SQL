select e1.Name as Employee from Employee e1, Employee e2
where e1.Salary > e2.Salary and e1.ManagerId = e2.Id;



-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/
