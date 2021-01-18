-- use >= all
-- bc we are asking about the "Number" of orders, use count(customer_number)

select customer_number
from orders
group by 1
having count(*) >= all(select count(customer_number) from orders group by customer_number)
;

-- Link: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
