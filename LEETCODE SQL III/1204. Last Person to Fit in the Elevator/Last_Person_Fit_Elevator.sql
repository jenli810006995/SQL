
-- create total_weight table

with tw as
(select person_name, 
       sum(weight) over(order by turn asc) as cul_weight
from Queue
group by person_name
order by 2)

select person_name
from tw
where cul_weight < 1000
group by person_name
order by cul_weight desc limit 1;


-- Link: https://leetcode.com/problems/last-person-to-fit-in-the-elevator/
