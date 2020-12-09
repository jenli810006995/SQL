select seller_name
from Seller
where seller_id not in
(
  select seller_id
  from Orders
  where year(sale_date) ='2020'
)
group by 1
order by 1;

