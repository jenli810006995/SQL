* Time: July 11 2020

The Trips table holds all taxi trips. Each trip has a unique Id, while Client_Id and Driver_Id are both foreign keys to the Users_Id at the Users table. Status is an ENUM type of (‘completed’, ‘cancelled_by_driver’, ‘cancelled_by_client’).

```
/*The cancellation rate is computed by dividing the number of canceled (by client or driver) requests made by unbanned users by the total number of requests made by unbanned users.*/

select t.Request_at as Day, round(sum(case when t.Status != 'completed' then 1 else 0 end)/count(*), 2) 'cancellation rate'
from Trips t where t.Driver_Id in
(select Users_Id from Users where Banned = 'No')
and t.Client_Id in 
(select Users_Id from Users where Banned = 'No')
and t.Request_at between '2013-10-01' and '2013-10-03'
group by t.Request_at

```
