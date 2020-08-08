* Time: Aug 7 2020

Given a table salary, such as the one below, 
that has m=male and f=female values. Swap all f and m values (i.e., change all f values to m and vice versa) 
with a single update statement and no intermediate temp table.

Note that you must write a single update statement, DO NOT write any select statement for this problem.

* Logic: The syntax for UPDATE is: UPDATE TABLE SET COLUMN = IF(COLUMN=,,)

* Solution:

```
UPDATE SALARY SET SEX=IF(SEX = 'm','f','m')

```
* [Link](https://leetcode.com/problems/swap-salary/)

