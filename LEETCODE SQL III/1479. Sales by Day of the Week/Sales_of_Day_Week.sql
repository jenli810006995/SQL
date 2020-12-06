select I.item_category as Category,
       sum(case when dayofweek(O.order_date) = 2 then O.quantity else 0 end) as 'Monday',
       sum(case when dayofweek(O.order_date) = 3 then O.quantity else 0 end) as 'Tuesday',
       sum(case when dayofweek(O.order_date) = 4 then O.quantity else 0 end) as 'Wednesday',
       sum(case when dayofweek(O.order_date) = 5 then O.quantity else 0 end) as 'Thursday',
       sum(case when dayofweek(O.order_date) = 6 then O.quantity else 0 end) as 'Friday',
       sum(case when dayofweek(O.order_date) = 7 then O.quantity else 0 end) as 'Saturday',
       sum(case when dayofweek(O.order_date) = 1 then O.quantity else 0 end) as 'Sunday'
from Items I
left join
Orders O
on I.item_id = O.item_id
group by Category
order by Category;



--- use coalesce

select I.item_category as Category,
       coalesce(sum(case when dayofweek(O.order_date)= 2 then O.quantity end), 0) as 'Monday',
       coalesce(sum(case when dayofweek(O.order_date)= 3 then O.quantity end), 0) as 'Tuesday',
       coalesce(sum(case when dayofweek(O.order_date)= 4 then O.quantity end), 0) as 'Wednesday',
       coalesce(sum(case when dayofweek(O.order_date)= 5 then O.quantity end), 0) as 'Thursday',
       coalesce(sum(case when dayofweek(O.order_date)= 6 then O.quantity end), 0) as 'Friday',
       coalesce(sum(case when dayofweek(O.order_date)= 7 then O.quantity end), 0) as 'Saturday',
       coalesce(sum(case when dayofweek(O.order_date)= 1 then O.quantity end), 0) as 'Sunday'
       from Items I
       left join Orders O
       on I.item_id = O.item_id
       group by Category
       order by Category;
       
       

