select Request_at as Day,
       round(sum(case when status != 'completed' then 1 else 0 end)/count(*), 2) as 'Cancellation Rate'
from Trips
where Client_id in 
  (select Users_id from Users where Banned = 'No')
  and Driver_id in
  (select Users_id from Users where Banned = 'No')
and request_at between '2013-10-01' and '2013-10-03'
group by 1
order by 1;

-- Link: https://leetcode.com/problems/trips-and-users/


