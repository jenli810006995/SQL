-- Here the most frequent means the most count(*) of produtcs per customer

with most_freq_order as
(
  select customer_id,
         product_id,
         dense_rank() over(partition by customer_id order by count(*) desc) as rnk
  from Orders
  group by 1, 2
)

select m.customer_id, m.product_id, p.product_name
from most_freq_order m
inner join Products p
on m.product_id = p.product_id
and m.rnk = 1;


-- Link: https://leetcode.com/problems/the-most-frequently-ordered-products-for-each-customer/
