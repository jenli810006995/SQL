with recursive seq as
(
  select 1 as value 
  union all
  select value+1 from seq where value < (select max(customer_id) from Customers)
)

select distinct s.value as ids
from seq s
where s.value not in
(
  select customer_id from Customers
)
group by 1
order by 1;

