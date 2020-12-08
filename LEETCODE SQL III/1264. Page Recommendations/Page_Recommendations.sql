-- first exclude the page_id user_id = 1 likes
-- second, find the page_id his friends like

with cte as
(
  select user_id, 
         page_id
         from Likes
         where page_id not in
         (
           select page_id from Likes where user_id = 1
         )
)

select c.page_id as recommended_page
from cte c
where c.user_id in
(select user1_id from Friendship where user2_id = 1)
or c.user_id in 
(select user2_id from Friendship where user1_id = 1)
group by 1;

