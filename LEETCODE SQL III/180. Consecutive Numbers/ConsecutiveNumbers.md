* Time: Aug. 13 2020

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
* Logic: Create three temp tables and then compare them with one another

* Solution:
```
select l1.Num as ConsecutiveNums from Logs l1, Logs l2, Logs l3
where l1.Num = l2.Num and l2.Num = l3.Num
and l2.Id = l1.Id+1 and l3.Id = l2.Id+1;
```

* [Link](https://leetcode.com/problems/consecutive-numbers/submissions/)

