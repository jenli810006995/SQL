with cte as
(
    select duration/60 as mins
    from Sessions
)

select b.bin as bin, ifnull(b.total, 0) as total 
from
(
    select '[0-5>' as bin,
    sum(case when 0 <= mins and mins < 5 then 1 end) as total
    from cte
    union all
    select '[5-10>' as bin,
    sum(case when 5 <= mins and mins < 10 then 1 end) as total
    from cte
    union all
    select '[10-15>' as bin,
    sum(case when 10 <= mins and mins < 15 then 1 end) as total
    from cte
    union all
    select '15 or more' as bin,
    sum(case when 15 <= mins then 1 end) as total
    from cte
) b


-- Link: https://leetcode.com/problems/create-a-session-bar-chart/
