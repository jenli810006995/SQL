-- 840 seconds

select t2.country
from
(
  select caller_id as id, duration from Calls
  union all
  select callee_id as id, duration from Calls
) t1
left join
(
  select c.name as country
  from Country c
  join
  Person p
  on 
  c.country_code = left(p.phone_number, 3)
) t2
on t1.id = t2.id
group by 1
having avg(duration) > (select avg(duration) from Calls)
;


-- 963 seconds

select co.name as country
from Country co
right join
Person p
on co.country_code = left(p.phone_number, 3)
join Calls ca
on p.id = ca.caller_id or p.id = ca.callee_id
group by 1
having avg(duration) > (select avg(duration) from Calls)
;
