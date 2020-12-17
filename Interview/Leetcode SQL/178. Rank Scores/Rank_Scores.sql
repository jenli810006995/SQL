-- dense_rank bc the question asked for consecutive ranks for ties

select Score,
       dense_rank() over(order by Score desc) as `Rank`
from Scores
order by 1 desc;

-- Link: https://leetcode.com/problems/rank-scores/
