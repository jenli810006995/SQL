select distinct l1.Num as ConsecutiveNums
from Logs l1, Logs l2, Logs l3
-- l1, l2, l3
where 
l1.Num = l2.Num and l2.Num = l3.Num
and 
(l1.id = l2.id -1 and l1.id = l3.id - 2)

-- Link: https://leetcode.com/problems/consecutive-numbers/
