select actor_id, director_id
from
(
  select actor_id, director_id
  from ActorDirector
  group by 1, 2
  having count(*) >= 3
) x
group by 1, 2
;

-- Link: https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/
