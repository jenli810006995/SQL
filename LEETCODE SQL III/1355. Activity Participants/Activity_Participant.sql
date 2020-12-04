with activity_count as
(select activity, count(distinct id) as num_participant from Friends group by activity),
min_max as
(select max(num_participant) as max_participant, min(num_participant) as min_participant
from activity_count)

select activity from activity_count where num_participant <> (select max_participant from min_max)
and num_participant <> (select min_participant from min_max);

-- Link: https://leetcode.com/problems/activity-participants/


