-- dense_rank() over(partition by  order by) bc it said in case a tie, the lower player_id wins, so player_id has added to the order by clause

with m1 as
(
  select first_player as player, first_score as score
    from Matches
    union all
  select second_player as player, second_score as score
    from Matches
),
m2 as
(
  select player, p.group_id, sum(score) as total_score
  from m1
    right join
    Players p
    on m1.player = p.player_id
    group by 1, 2
)

select group_id, player as player_id
from
(
  select group_id, player,
         dense_rank() over(partition by group_id order by total_score desc, player) as rnk
    from m2
) m3
where rnk = 1
group by 1, 2
order by 2;


