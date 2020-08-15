* Time: Aug 14 2020

Write a SQL query to get the second highest salary from the Employee table.

```
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
```
For example, given the above Employee table, the query should return 200 as the second highest salary. 
If there is no second highest salary, then the query should return null.
```
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+
```
* Logic: When seeing Ranking, my intuition was to use DISTINCT(), ORDER BY DESC and use LIMIT OFFEST if not looking for the highest or the lowest one.
Here to note the "null" cases, the workaround was to use another SELECT as the outer query as SecondHighestSalary

* Solution:
```
select(
select distinct Salary from Employee
order by Salary desc limit 1 offset 1)
as SecondHighestSalary 

```
* [Link](https://leetcode.com/problems/second-highest-salary/submissions/)

