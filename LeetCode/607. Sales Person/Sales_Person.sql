select s.name 
from salesperson s
where sales_id not in
(
  select sales_id
  from orders
  join company
  on orders.com_id = company.com_id
  where company.name = 'Red'
  group by 1
);

-- Link: https://leetcode.com/problems/sales-person/
