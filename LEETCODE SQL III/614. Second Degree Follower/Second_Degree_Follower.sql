-- select follower also is followee

with cte as
(
select follower 
from follow
where follower
in (select followee from follow)
)

select followee as follower,
       -- bc we want second degree follower
       count(distinct follower) as num
from follow
where followee
in (select follower in cte)
group by followee;




