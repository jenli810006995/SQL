[**601. Human Traffic of Stadium**](https://leetcode.com/problems/human-traffic-of-stadium/)

X city built a new stadium, each day many people visit it and the stats are saved as these columns: id, visit_date, people

Please write a query to display the records which have 3 or more consecutive rows and the amount of people more than 100(inclusive).

For example, the table stadium:

```
+------+------------+-----------+
| id   | visit_date | people    |
+------+------------+-----------+
| 1    | 2017-01-01 | 10        |
| 2    | 2017-01-02 | 109       |
| 3    | 2017-01-03 | 150       |
| 4    | 2017-01-04 | 99        |
| 5    | 2017-01-05 | 145       |
| 6    | 2017-01-06 | 1455      |
| 7    | 2017-01-07 | 199       |
| 8    | 2017-01-08 | 188       |
+------+------------+-----------+

```

For the sample data above, the output is:

```
+------+------------+-----------+
| id   | visit_date | people    |
+------+------------+-----------+
| 5    | 2017-01-05 | 145       |
| 6    | 2017-01-06 | 1455      |
| 7    | 2017-01-07 | 199       |
| 8    | 2017-01-08 | 188       |
+------+------------+-----------+

```

* **Logic**: Use distinct() and join three tables, and then see three conditions: t1.id in the beginning, in the second, and in the last
* **Solution**: 
```
select distinct t1.* from stadium t1, stadium t2, stadium t3
where t1.people >= 100 and t2.people >= 100 and t3.people >=100
and ((t1.id - t2.id = 1 and t1.id - t3.id = 2 and t2.id - t3.id = 1) # t1, t2, t3
or (t2.id - t1.id = 1 and t2.id - t3.id = 2 and t1.id - t3.id = 1) # t2, t1, t3
or (t3.id - t2.id = 1 and t3.id - t1.id = 2 and t2.id - t1.id = 1) # t3, t2, t1
) order by t1.id

```
