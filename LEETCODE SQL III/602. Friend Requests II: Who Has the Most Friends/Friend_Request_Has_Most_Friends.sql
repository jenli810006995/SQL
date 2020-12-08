select tb2.id as id,
       tb2.num as num
from
(
  select id as id,
       count(*) as num
       from
       (
         select accepter_id as id from request_accepted
         union all
         select requester_id from request_accepted
       ) tb1
 group by 1
) tb2
group by 1
order by 2 desc limit 1;

