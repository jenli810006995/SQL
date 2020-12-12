select name as customer_name,
               customer_id,
               order_id,
               order_date
from
(
  select name,
         customer_id,
         order_id,
         order_date,
         rank() over(partition by name, customer_id order by order_date desc) as rnk
  from Customers a
  join Orders b
  using (customer_id)
) temp
where rnk = 1 or rnk = 2 or rnk = 3
order by 1 asc, 2 asc, 4 desc;

