select round(sum(TIV_2016),2) as TIV_2016
from insurance
where TIV_2015 in
(
    select TIV_2015
    from insurance
    group by 1
    having count(*) > 1
) and concat(LAT, LON) in
(
  select concat(LAT, LON) from 
  insurance
  group by LAT, LON
  having count(*) = 1
)

-- Link: https://leetcode.com/problems/investments-in-2016/
