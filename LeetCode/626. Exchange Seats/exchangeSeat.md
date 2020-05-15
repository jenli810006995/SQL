[**626. Exchange Seats**](https://leetcode.com/problems/exchange-seats/)

Mary is a teacher in a middle school and she has a table seat storing students' names and their corresponding seat ids.

The column id is continuous increment.
 

Mary wants to change seats for the adjacent students.
 

Can you write a SQL query to output the result for Mary?

```
+---------+---------+
|    id   | student |
+---------+---------+
|    1    | Abbot   |
|    2    | Doris   |
|    3    | Emerson |
|    4    | Green   |
|    5    | Jeames  |
+---------+---------+
```
For the sample input, the output is:

```
+---------+---------+
|    id   | student |
+---------+---------+
|    1    | Doris   |
|    2    | Abbot   |
|    3    | Green   |
|    4    | Emerson |
|    5    | Jeames  |
+---------+---------+
```

* **Logic**: created "cnt" as total count firstly, and then compare id with cnt. If id is cnt and is odd, which means it is the last record,
then do not have to do anything with it. Otherwise, if the id is odd, add 1 to the id, even, then minus one in id

* **Solution**:
```
select if(cnt % 2 = 1 and id = cnt, id, if(id%2=1, id+1, id-1)) as id, student from seat, 
(select count(*) as cnt from seat) as t
order by id

```
