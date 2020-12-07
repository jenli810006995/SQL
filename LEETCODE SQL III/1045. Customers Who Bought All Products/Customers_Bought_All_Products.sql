-- all product = use count(distinct)

select customer_id
from
(
  select c.customer_id, p.product_key
  from Product p
  left join
  Customer c
  on p.product_key = c.product_key
) t
group by 1 -- do aggregation
having count(distinct product_key) = (select count(*) from Product);

