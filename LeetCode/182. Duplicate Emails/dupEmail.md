[**182. Duplicate Emails**](https://leetcode.com/problems/duplicate-emails/)

Write a SQL query to find all duplicate emails in a table named Person.

```
+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+

```
For example, your query should return the following for the above table:

```
+---------+
| Email   |
+---------+
| a@b.com |
+---------+

```

* **Logic**: Use inner join and id > id (not id !=id)
* **Solution**:
```
Select p1.Email from Person p1 inner join Person p2
on p1.Email = p2.Email
and p1.Id > p2.Id

```
