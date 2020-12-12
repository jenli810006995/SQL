-- group by() is before the having() clause

select c.name as country
from
(
  select caller_id as id, duration from Calls
  union all
  select callee_id as id, duration from Calls
) a
left join Person p
on p.id = a.id
left join Country c
on left(p.phone_number, 3) = c.country_code
group by 1
having avg(duration) > (select avg(duration) from Calls)
;



