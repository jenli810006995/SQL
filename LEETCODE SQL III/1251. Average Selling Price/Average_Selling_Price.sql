-- create a table for profits 

with cte as
(
  select p.product_id, p.price, u.units as quantity, p.price*u.units as profit
  from Prices p -- bc UnitsSold table has no pk
  left join
  UnitsSold u
  on p.product_id = u.product_id
  and u.purchase_date between p.start_date and p.end_date
)

select cte.product_id, round((sum(cte.profit)/sum(cte.quantity)), 2) as average_price
from cte
group by 1;

