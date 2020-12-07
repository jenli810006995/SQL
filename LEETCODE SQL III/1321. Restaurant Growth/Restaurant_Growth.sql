with cte as
(
    select visited_on, sum(amount) as amount
    from Customer
    group by visited_on
)

select c1.visited_on, sum(c2.amount) as amount, round(sum(c2.amount)/7, 2) as average_amount
from cte c1
left join cte c2
on datediff(c1.visited_on, c2.visited_on) <= 6 and datediff(c1.visited_on, c2.visited_on) >= 0
group by 1
having count(*) = 7;


-- Link: https://leetcode.com/problems/restaurant-growth/
