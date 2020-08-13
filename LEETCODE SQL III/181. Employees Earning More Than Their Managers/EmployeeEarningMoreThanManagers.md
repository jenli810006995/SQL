* Time: Aug. 12 2020

The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.

Given the Employee table, write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.

* Logic: When facing comparison question, we have to use temp tables to create another one or two tables

* Solution:
```
select e1.Name as Employee from Employee e1 join Employee e2
where e1.ManagerId = e2.Id
and e1.Salary > e2.Salary;

```

* [Link](https://leetcode.com/problems/employees-earning-more-than-their-managers/)
