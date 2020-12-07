select c.customer_id, 
       c.customer_name
from Customers c
where c.customer_id not in
(
  select customer_id
  from Orders where product_name = 'C'
)
and
c.customer_id in
(
  select customer_id
  from Orders where product_name = 'A'
)
and
c.customer_id in
(
  select customer_id
  from Orders where product_name = 'B'
)
group by 1, 2;

