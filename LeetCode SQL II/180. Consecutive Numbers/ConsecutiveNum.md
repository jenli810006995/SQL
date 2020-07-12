* Time: July 12 2020

Write a SQL query to find all numbers that appear at least three times consecutively.

```
+----+-----+
| Id | Num |
+----+-----+
| 1  |  1  |
| 2  |  1  |
| 3  |  1  |
| 4  |  2  |
| 5  |  1  |
| 6  |  2  |
| 7  |  2  |
+----+-----+
```
For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.

```
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
```

* Solution: Use select distinct and create three copies

```
# Write your MySQL query statement below

/*creat three copies of Logs and remeber select distinct*/

select distinct l1.Num as ConsecutiveNums from Logs l1, Logs l2, Logs l3
where l1.Num = l2.Num and l2.Num = l3.Num
and l1.Id = l2.Id - 1 and l2.Id = l3.Id -1

```
