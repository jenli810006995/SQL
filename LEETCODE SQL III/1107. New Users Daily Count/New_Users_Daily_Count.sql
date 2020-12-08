-- create a table with user_id's first login_date
-- date_sub('2019-06-30', interval 90 day)

with cte as 
(
  select user_id,
  activity_date as login_date,
  rank() over(partition by user_id order by activity_date) as rnk
  from Traffic
  where activity = 'login'
)

select c.login_date as login_date,
       count(distinct c.user_id) as user_count
from cte c
where c.login_date >= date_sub('2019-06-30', interval 90 day)
and c.rnk = 1
group by 1
order by 1;



