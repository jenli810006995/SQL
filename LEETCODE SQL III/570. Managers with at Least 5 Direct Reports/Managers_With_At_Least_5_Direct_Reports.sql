select Name
from Employee
where Id in
(
  select ManagerId from Employee
  group by 1
  having count(*) >= 5
)
group by 1
;

