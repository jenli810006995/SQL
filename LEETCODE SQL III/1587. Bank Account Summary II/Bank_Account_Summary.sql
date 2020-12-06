with acc_balance as
(
  select *, sum(amount) as balance 
  from Transactions
  group by account
)

select Users.name as name,
       acc_balance.balance as balance
from Users right join
acc_balance
on Users.account = acc_balance.account
where balance > 10000
;

