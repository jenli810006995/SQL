* Time: July 11 2020

SQL Schema
Given a table salary, such as the one below, that has m=male and f=female values. Swap all f and m values (i.e., change all f values to m and vice versa) with a single update statement and no intermediate temp table.

Note that you must write a single update statement, DO NOT write any select statement for this problem.

* Solution in MySQL: Use update and set

```
update salary set sex = if(sex = 'm', 'f', 'm')

```
