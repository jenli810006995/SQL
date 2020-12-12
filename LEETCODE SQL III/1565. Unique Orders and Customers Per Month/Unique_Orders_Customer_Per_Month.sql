with month as
(
  select date_format(order_date, '%Y-%m') as month,
         count(distinct order_id) as order_count,
         count(distinct customer_id) as customer_count
  from Orders
  where invoice > 20
  group by 1
)

select m.month,
       m.order_count,
       m.customer_count
from month m;

