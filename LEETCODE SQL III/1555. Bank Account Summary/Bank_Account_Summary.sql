-- create a payment table
-- create a received table
-- credit = payment - receive

with payment as
(
  select paid_by as user_id, sum(amount) as payment
    from Transactions
    group by 1
), 
received as
(
  select paid_to as user_id, sum(amount) as received
    from Transactions
    group by 1
)

-- join with the Users table

select u.user_id,
       u.user_name,
       u.credit - coalesce(p.payment, 0) + coalesce(r.received,0) as credit,
       case when (u.credit - coalesce(p.payment, 0) + coalesce(r.received,0)) < 0 then 'Yes' 
       else 'No' end as credit_limit_breached
       from Users u
       left join payment p
       on u.user_id = p.user_id
       left join received r
       on u.user_id = r.user_id;
       
       
 -- Link: https://leetcode.com/problems/bank-account-summary/
       
