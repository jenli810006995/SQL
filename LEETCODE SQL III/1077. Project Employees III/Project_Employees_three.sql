select project_id,
       employee_id
       from Project
       join Employee
       using (employee_id)
where (project_id, experience_years) in
(select project_id, max(experience_years) from Employee
join Project
using (employee_id) group by 1)
;

