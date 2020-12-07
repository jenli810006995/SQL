-- create a average table

with avg as
(
  select event_type,
         avg(occurences) as average
  from Events
  group by 1
)

select e.business_id
from Events e
right join avg a
on e.event_type = a.event_type
and e.occurences > a.average
group by 1
having count(*) > 1;

