with no_trans as
(
  select customer_id,
         count(distinct visit_id) as count_no_trans
  from Visits
  where visit_id not in
  (
    select visit_id from Transactions
  )
  group by 1
)

select nt.customer_id,
       nt.count_no_trans
from no_trans nt
;


