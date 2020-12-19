-- Write an SQL query to display the records with three or more rows with consecutive id's, and the number of people is greater than or equal to 100 for each.
-- Return the result table ordered by visit_date in ascending order.

select id, visit_date, people
from Stadium
where people >= 100
and 
  (
  id in (select id from Stadium where people >= 100) and
  id-1 in (select id from Stadium where people >= 100) and
  id-2 in (select id from Stadium where people >= 100)
  )
or
  (
  id+2 in (select id from Stadium where people >= 100) and
  id+1 in (select id from Stadium where people >= 100) and
  id in (select id from Stadium where people >= 100)
  )
or
  (
  id+1 in (select id from Stadium where people >= 100) and
  id in (select id from Stadium where people >= 100) and
  id-1 in (select id from Stadium where people >= 100)
  )
  order by visit_date asc;
  
  -- Link: https://leetcode.com/problems/human-traffic-of-stadium/
  
  
