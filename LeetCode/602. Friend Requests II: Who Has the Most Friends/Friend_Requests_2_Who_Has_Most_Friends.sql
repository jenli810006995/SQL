
select id, num
from
(
  select id, count(*) as num from
  (
    select requester_id as id from request_accepted
    union all
    select accepter_id as id from request_accepted
  ) tb1 group by 1
) tb2
group by 1
order by 2 desc limit 1;

-- Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
