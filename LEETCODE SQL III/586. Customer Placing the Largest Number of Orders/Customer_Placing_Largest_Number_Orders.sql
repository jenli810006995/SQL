with cus_orders as
(
  select customer_number,
         count(distinct order_number) as cus_orders_cnt
         from orders
         group by 1
)

select cs.customer_number
from cus_orders cs
order by cs.cus_orders_cnt desc limit 1;


-- Link: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
