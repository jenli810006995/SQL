select case when mod(id, 2) = 1 and id = counts then id
            when mod(id, 2) = 1 then id + 1
            else id - 1 end as id,
            student
from seat,
(
  select count(*) as counts from seat
) x
order by 1;

-- Link: https://leetcode.com/problems/exchange-seats/
