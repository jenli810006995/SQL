select min(score) as min,
       round(percentile_cont(0.5) within group(order by score)::numeric,2)::float as median,
       max(score) as max
from result;

