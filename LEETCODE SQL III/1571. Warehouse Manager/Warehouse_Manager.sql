-- create a volume table for each prod_id

with prod_vol as
(
  select product_id,
         Width*Height*Length as volume
  from Products
  group by 1
)

-- join with warehouse table

select w.name as warehouse_name,
       sum(pv.volume * w.units) as volume
from warehouse w
left join
prod_vol pv
on w.product_id = pv.product_id
group by 1;

