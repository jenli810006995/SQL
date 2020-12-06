-- create rate

select round(100*avg(rate),2) as average_daily_percent
from
(
select a.action_date, sum(a.action_date <= r.remove_date and a.post_id = r.post_id) / count(distinct a.post_id) rate
from
-- create table a
(
    select distinct post_id, action_date, extra
    from Actions
) a, Removals r
where a.extra = 'spam'
group by 1
) t1

-- Link: https://leetcode.com/problems/reported-posts-ii/
