select project_id
from
(
  select project_id,
         rank() over(order by count(distinct employee_id) desc) as rnk
  from project
  group by 1
) x
where rnk = 1
;

-- Link: https://leetcode.com/problems/project-employees-ii/
