select id, visit_date, people
from stadium where people >= 100
and
(
  id in (select id from stadium where people >= 100) and
  id + 1 in (select id from stadium where people >= 100) and
  id - 1 in (select id from stadium where people >= 100)
) or
(
  id + 2 in (select id from stadium where people >= 100) and
  id + 1 in (select id from stadium where people >= 100) and
  id in (select id from stadium where people >= 100)
) or
(
  id - 2 in (select id from stadium where people >= 100) and
  id - 1 in (select id from stadium where people >= 100) and
  id in (select id from stadium where people >= 100)
)
order by visit_date asc;

-- Link: https://leetcode.com/problems/human-traffic-of-stadium/
