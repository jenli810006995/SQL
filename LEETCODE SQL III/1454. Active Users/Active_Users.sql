-- first create a table with distinct id, logins
-- second, if the lag() = date_sub then 1 else 0, create a table with the count of active users
-- join the second with the Accounts table

with t1 as
(
    select distinct id, login_date from Logins
),
t2 as
(
    select id,
    case when lag(login_date, 4) over(partition by id order by login_date)= date_sub(login_date, interval 4 day) then 1 else 0 end as total
    from t1
)

select t2.id, a.name
from t2
left join
Accounts a
on t2.id = a.id
group by t2.id, a.name
having sum(t2.total) >= 1
order by t2.id;


--- 
-- create a active table
-- use subquery in the active table

with active as
(
   select id,
   login_date,
   lag(login_date, 4) over(partition by id order by login_date) as lag4
   from
   (
       select distinct * from Logins
  ) t
)

select a1.id, a.name
from active a1
left join Accounts a
on a1.id = a.id
where datediff(login_date, lag4) = 4
group by a1.id, a.name
order by a1.id;





