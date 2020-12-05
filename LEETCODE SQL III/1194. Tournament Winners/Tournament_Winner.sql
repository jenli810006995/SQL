-- create two tables, one is m1 to union all first_player, first_score, second_player, and second_score
-- the second table m2, to join the m1 with Players table
-- union all contains duplicates

with m1 as
(
    select match_id, first_player as player, first_score as score from Matches 
    union all
    select match_id, second_player as player, second_score as score from Matches
),
m2 as
(
    select m1.player, p.group_id, sum(score) as total_score
    from m1 right join
    Players p
    on m1.player = p.player_id
    group by m1.player, p.group_id
)

select group_id, player as player_id
from
(
    select player, group_id, dense_rank() over(partition by group_id order by total_score desc, player) as rnk
    from m2
) m3
where rnk = 1;

