-- self join
select e.id, e.month, sum(e2.salary) as salary
from Employee e
join Employee e2
on (e.id = e2.id and e.month >= e2.month and (e.month - e2.month <= 2))
where e.month < (select max(month) from Employee where e.id = id) group by 1, 2
order by 1, 2 desc;

-- Link: https://leetcode.com/problems/find-cumulative-salary-of-an-employee/
