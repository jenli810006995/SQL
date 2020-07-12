* Time: July 11 2020

Write a SQL query to delete all duplicate email entries in a table named Person, keeping only unique emails based on its smallest Id.

```
# Write your MySQL query statement below

delete e2 from Person e2 join Person e1
on e2.Email = e1.Email and e2.ID > e1.ID

```
