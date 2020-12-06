with food as
(
  select *
  from
    (
    select *,
          row_number() over(partition by customer_id order by order_date) as rnk
    from Delivery
    ) a
  where rnk = 1
  -- means it is the customer's first order
)

select round(100*(sum(case when food.order_date = food.customer_pref_delivery_date then 1 else 0 end)/count(distinct Delivery_Id)) ,2) as immediate_percentage
from food;


-- Link: https://leetcode.com/problems/immediate-food-delivery-ii/

