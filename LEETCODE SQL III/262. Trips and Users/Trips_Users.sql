select Request_at as Day,
       round(sum(case when Status != 'completed' then 1 else 0 end)/count(*),2) as 'Cancellation Rate'
from Trips
where
Client_Id in (select Users_Id from Users where Banned = 'No')
and Driver_Id in (select Users_id from Users where Banned = 'No')
and Request_at between '2013-10-01' and '2013-10-03'
group by 1;

-- Link: https://leetcode.com/problems/trips-and-users/
