with immediate_order as
(
select count(*) as immediate_cnt from Delivery
where order_date = customer_pref_delivery_date
),
total_order as
(
select count(*) as total_cnt from Delivery  
)
select  round(100*(immediate_order.immediate_cnt/total_order.total_cnt), 2) as immediate_percentage
from immediate_order, total_order;

--------------------

select round(100*(sum(order_date = customer_pref_delivery_date)/count(*)),2) as immediate_percentage
from Delivery;



