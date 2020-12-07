-- (Ranking the numbers by frequency and number , both asc and desc. The median would have abs(rank asc-rank desc) =1 or rank asc=rank desc)

with recursive cte as
(
  select number, frequency from Numbers
  union all
  select number, frequency - 1 from cte where frequency > 1
)

select avg(number) as median
from 
(
  select number, rank() over(order by number, frequency) as ranka, rank() over(order by number desc, frequency desc) as rankd
  from cte order by number
) a
where ranka = rankd or ranka = rankd + 1 or ranka = rankd - 1;


-- Link: https://leetcode.com/problems/find-median-given-frequency-of-numbers/
