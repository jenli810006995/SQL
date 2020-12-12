-- dayofweek()
-- dayofweek = 1 is Sunday
-- use sum(), if count, then group by would auto-sum, but that is quantity, I have to explicitly speicify sum()
-- left join, bc it is a sales report want all the item_category regardless of being ordered or not

select i.item_category as Category,
       ifnull(sum(case when dayofweek(o.order_date) = 2 then o.quantity end), 0) as 'Monday',
       ifnull(sum(case when dayofweek(o.order_date) = 3 then o.quantity end), 0) as 'Tuesday',
       ifnull(sum(case when dayofweek(o.order_date) = 4 then o.quantity end), 0) as 'Wednesday',
       ifnull(sum(case when dayofweek(o.order_date) = 5 then o.quantity end), 0) as 'Thursday',
       ifnull(sum(case when dayofweek(o.order_date) = 6 then o.quantity end), 0) as 'Friday',
       ifnull(sum(case when dayofweek(o.order_date) = 7 then o.quantity end), 0) as 'Saturday',
       ifnull(sum(case when dayofweek(o.order_date) = 1 then o.quantity end), 0) as 'Sunday'
from Items i
left join
Orders o
using (item_id)
group by 1
order by 1;

