-- group_concat() function
-- sort products asc = The sold-products names for each date should be sorted lexicographically. 
-- contain duplicates = use distinct()

-- create products table, and then num_sold table

with products as
(
  select sell_date,
         group_concat(distinct product order by product asc) as products
  from Activities
  group by 1
),
num_sold as
(
  select sell_date,
         count(distinct product) as num_sold
  from Activities
  group by 1
)

select p.sell_date, n.num_sold, p.products
from products p
left join
num_sold n
on p.sell_date = n.sell_date
group by 1, 3
order by 1, 3;

