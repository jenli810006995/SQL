select America, Asia, Europe
from
(
  select @as:=0, @am:=0, @eu:=0
)t,
(
  select @as:=@as+1 as asid, name as 'Asia'
  from student where continent = 'Asia'
  order by Asia
)t1
right join
(
  select @am:=@am+1 as amid, name as 'America'
  from student where continent = 'America'
  order by America
)t2
on asid = amid
left join
(
  select @eu:=@eu+1 as euid, name as 'Europe'
  from student where continent = 'Europe'
  order by Europe
)t3
on amid = euid
;

-- Link: https://leetcode.com/problems/students-report-by-geography/
