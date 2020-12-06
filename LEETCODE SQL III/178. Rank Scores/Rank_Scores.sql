select Score, dense_rank() over(order by Score desc) as `Rank`
from Scores;

-- to avoid 'holes', we should use dense_rank() 
-- Link: https://leetcode.com/problems/rank-scores/
