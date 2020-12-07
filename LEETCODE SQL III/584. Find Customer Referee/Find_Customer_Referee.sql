-- Write a query to return the list of customers NOT referred by the person with id '2'.

select name
from customer
where referee_id != 2 or referee_id is null
order by 1;

-- Link: https://leetcode.com/problems/find-customer-referee/
