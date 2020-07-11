* Time: July 11 2020

596. Classes More Than 5 Students

SQL Schema
There is a table courses with columns: student and class

Please list out all classes which have more than or equal to 5 students.

* Solution in Oracle:

```
select class from courses group by class
having count(distinct(student)) > 4
```
