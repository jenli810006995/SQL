    
select p.project_id, e.employee_id
from project p
join employee e
on p.employee_id = e.employee_id
where (project_id, experience_years) in
(select project_id, max(experience_years) from project
join employee using(employee_id) group by 1
)

-- Link: https://leetcode.com/problems/project-employees-iii/
