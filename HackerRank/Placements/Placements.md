* Time: July 25 2020

You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

* Logic:
Firstly, select names from Students, and then join Friends table to get students' Friends ID. And than join Packages table to have each person's salary.
Next, join Packages table again to have Friends' salary. Lastly, filter by friends' salary greater than the persons' and then order by friends' salary.

* Solution:
```
select name from Students as s 
join Friends as f on
s.ID = f.ID
join Packages as p
on s.ID = p.ID
join Packages as fp
on f.Friend_ID = fp.ID
where p.Salary < fp.Salary
order by fp.Salary;

```

* [Question Link](https://www.hackerrank.com/challenges/placements/problem)

* [Credit](https://nifannn.github.io/2017/10/24/SQL-Notes-Hackerrank-Placements/)

