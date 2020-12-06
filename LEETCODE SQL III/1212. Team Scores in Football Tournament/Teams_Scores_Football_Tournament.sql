-- create team score table

with team_scores as
(
    select team_id,
           team_name,
           sum(case when (team_id = host_team and host_goals > guest_goals) or (team_id = guest_team and guest_goals > host_goals) then 3
                    when host_goals = guest_goals then 1
                    else 0 end) as num_points
   from Teams
   left join Matches
   on Teams.team_id = Matches.host_team or Teams.team_id = Matches.guest_team
   group by team_name
)

select team_id, team_name, num_points
from team_scores
group by team_id, team_name
order by num_points desc, team_id asc;


-- Link: https://leetcode.com/problems/team-scores-in-football-tournament/

