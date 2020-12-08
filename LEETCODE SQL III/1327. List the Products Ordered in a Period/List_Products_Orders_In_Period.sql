-- if not inner join, dont use using()

-- first, create a unit_amount table for each product id, filter the order date in Feb. 2020
-- then join with product table to get prod names and filter by only unit amount >= 100

with unit_amount as
(
  select p.product_id,
         sum(o.unit) as unit
  from Products p
  left join Orders o
  on p.product_id = o.product_id
  and year(o.order_date) = '2020' and month(o.order_date) = '2'
  group by 1
)

select p.product_name,
       u.unit
       from Products p
       right join unit_amount u
       on p.product_id = u.product_id
       group by 1
       having u.unit >= 100;
       
       
       
