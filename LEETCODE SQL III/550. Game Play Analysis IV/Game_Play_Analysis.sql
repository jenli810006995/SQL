-- create a table for people log in 2 consec days
-- create a table for total player

with total_player as
(
   select count(distinct player_id) as total_num
   from Activity
),
two_log_in as
(
  select player_id,
         event_date - lag(event_date, 1) over(partition by player_id order by event_date) as difference,
         dense_rank() over(partition by player_id order by event_date) as rnk
  from Activity
)

select round(count(two_log_in.player_id)/total_player.total_num, 2) as fraction
from two_log_in, total_player
where two_log_in.difference = 1
and two_log_in.rnk = 2 -- means they are consecutive
;

-- Link: https://leetcode.com/problems/game-play-analysis-iv/
