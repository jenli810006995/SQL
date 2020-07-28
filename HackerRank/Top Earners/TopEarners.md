* Time: July 27 2020

We define an employee's total earnings to be their salariesXmonthly worked, 
and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as 2 space-separated integers.

* Logic: Firstly, create "earnings" by selecting months times salary. Later, we have to get the count of employees who make the maximun salary.
We have to group the result by earnings to get unique earnings and then order by earnings desc limit 1 to have the maximun earning.

* Solution:

```
select salary*months as earnings, count(*) from employee group by earnings
order by earnings desc limit 1;
```

* [Question Link](https://www.hackerrank.com/challenges/earnings-of-employees/problem?h_r=next-challenge&h_v=zen)

* [Credit](https://nifannn.github.io/2017/10/23/SQL-Notes-Hackerrank-Top-Earners/)
