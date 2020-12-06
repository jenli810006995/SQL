* Time: July 11th 2020

SQL Schema
Mary is a teacher in a middle school and she has a table seat storing students' names and their corresponding seat ids.

The column id is continuous increment.
 

Mary wants to change seats for the adjacent students.
 

Can you write a SQL query to output the result for Mary?

Note:
If the number of students is odd, there is no need to change the last one's seat.

```
# Write your MySQL query statement below

select if(cnt % 2 = 1 and id = cnt, id, if(id % 2 = 1, id + 1, id - 1)) as id, student from seat,
(select count(*) as cnt from seat) as t
order by id

```
