-- create a table with team size

with team_size as
(
  select team_id,
         count(*) as team_size
  from Employee
  group by 1
)

-- join with Employee

select e.employee_id,
       t.team_size
from Employee e
inner join team_size t
on e.team_id = t.team_id
group by 1;

