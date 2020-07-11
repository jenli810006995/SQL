* Time: July 11 2020

SQL Schema
X city built a new stadium, each day many people visit it and the stats are saved as these columns: id, visit_date, people

Please write a query to display the records which have 3 or more consecutive rows and the amount of people more than 100(inclusive).

```
/* Write your MySQL query statement below */

select id, to_char(visit_date, 'YYYY-MM-DD') as visit_date, people from stadium 
where people >= 100 and

/* (id - 1, id, id + 1), (id, id -1, id -2), (id + 2, id + 1, id)*/

((id - 1 in (select id from stadium where people >= 100) and
id -2 in (select id from stadium where people >= 100)) or
(id + 1 in (select id from stadium where people >= 100) and
id + 2 in (select id from stadium where people >= 100)) or
(id + 1 in (select id from stadium where people >= 100) and
id -1 in (select id from stadium where people >= 100)))

```
