* Time: Aug. 10 2020

The Trips table holds all taxi trips. Each trip has a unique Id, while Client_Id and Driver_Id are both foreign keys to the Users_Id at the Users table. 
Status is an ENUM type of (‘completed’, ‘cancelled_by_driver’, ‘cancelled_by_client’).

Write a SQL query to find the cancellation rate of requests made by unbanned users (both client and driver must be unbanned) between Oct 1, 2013 and Oct 3, 2013. 
The cancellation rate is computed by dividing the number of canceled (by client or driver) requests made by unbanned users by the total number of requests 
made by unbanned users.

* Logic:
1. The output table has two columns: Day and Cancelltation Rate
2. Date: Date has to between Oct 1 and Oct 3 2013. 
So we use select t.Request_at as Day
3. Cancellation rate: round(sum(case when Status != "completed" then 1 else 0 end)/count(*),2)
4. then combine together by: t.Driver_Id in (select Users_Id from Users where Banned = "No") and t.Client_Id in (select Users_Id from Users where Banned ="No")

* Solution:

```
select t.Request_at as Day, round(sum(case when t.Status != "completed" then 1 else 0 end)/count(*), 2)
as "cancellation rate"
from Trips t where
t.Client_Id in (select Users_Id from Users where Banned = "No") and
t.Driver_Id in (select Users_Id from Users where Banned = "No") and
t.Request_at between '2013-10-01' and '2013-10-03'
group by request_at;

```

* [Link](https://leetcode.com/problems/trips-and-users/)
