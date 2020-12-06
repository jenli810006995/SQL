-- remember to order by 1 as 'In case of a tie, return lexicographically smaller user name.'

(select u.name as results
from Users u
inner join
Movie_Rating
using (user_id)
group by 1
order by count(movie_id) desc, 1
limit 1)

union all

(
select m.title as results
from Movies m
inner join
Movie_Rating mr
using (movie_id)
where concat(extract(year from mr.created_at), extract(month from mr.created_at)) ='20202'
group by 1
order by avg(mr.rating) desc, 1
limit 1
)


-- Link: https://leetcode.com/problems/movie-rating/
