select product_name,
       product_id,
       order_id,
       order_date
from
(
  select 
         product_name,
         product_id,
         order_id,
         order_date,
         rank() over(partition by product_name, product_id order by order_date desc) as rnk
  from Orders a
  join Products b
  using(product_id)
) tmp
where rnk = 1
order by 1, 2, 3;

