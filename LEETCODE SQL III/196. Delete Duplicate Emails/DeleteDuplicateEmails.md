* Time: Aug 10 2020

Write a SQL query to delete all duplicate email entries in a table named Person, keeping only unique emails based on its smallest Id.

Note:

Your output is the whole Person table after executing your sql. Use delete statement.

* Logic: The syntax is : DELETE object FROM Table e2 JOIN Table e1 WHERE conditions

* Solution:
```
delete e2 from Person e2 join Person e1 
where e2.Email = e1.Email
and e2.Id > e1.Id;
```

* [Link](https://leetcode.com/problems/delete-duplicate-emails/)


