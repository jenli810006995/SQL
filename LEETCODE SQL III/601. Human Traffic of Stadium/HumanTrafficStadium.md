* Time: Aug.8 2020

X city built a new stadium, each day many people visit it and the stats are saved as these columns: id, visit_date, people

Please write a query to display the records which have 3 or more consecutive rows and the amount of people more than 100(inclusive).

* Logic: 
There are three possibilities of the arrangement for id as below:
(id+1, id, id-1), (id, id-1, id-2), and (id+2, id+1, id).
Also, need to use "to_char" for visit_date.

* Solution:

```
SELECT id, to_char(visit_date, 'YYYY-MM-DD') AS visit_date, people 
from stadium where
people >=100 and

(id-1 in (select id from stadium where people>=100) and
id in (select id from stadium where people>=100) and
id+1 in (select id from stadium where people>=100)) or
(id in (select id from stadium where people>=100) and
id-1 in (select id from stadium where people>=100) and
id-2 in (select id from stadium where people>=100)) or
(id+2 in (select id from stadium where people>=100) and
id+1 in (select id from stadium where people>=100) and
id in (select id from stadium where people>=100))

```
* [Link](https://leetcode.com/problems/human-traffic-of-stadium/)

