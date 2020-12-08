-- group by prod_id to get sum(rest), sum(paid), sum(canceled), sum(refunded)

with prod_invoice as
(
  select product_id,
         sum(rest) as rest,
         sum(paid) as paid,
         sum(canceled) as canceled,
         sum(refunded) as refunded
   from Invoice
   group by 1
)

select p.Name,
       pi.rest,
       pi.paid,
       pi.canceled,
       pi.refunded
from Product p
inner join prod_invoice pi
on p.product_id = pi.product_id
group by 1
order by 1;

