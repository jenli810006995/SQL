with c as
(
    select id,
           company,
           salary,
           row_number() over(partition by company order by salary) as rno,
           count(*) over(partition by company) as cnt
    from Employee 
)

select c.id,
       c.company,
       c.salary
from c
where c.rno in (ceil(c.cnt/2), c.cnt/2+1);


-- Link: https://leetcode.com/problems/median-employee-salary/
