* Time: Aug. 9 2020

X city built a new stadium, each day many people visit it and the stats are saved as these columns: id, visit_date, people

Please write a query to display the records which have 3 or more consecutive rows and the amount of people more than 100(inclusive).

Note:
Each day only have one row record, and the dates are increasing with id increasing.

* Logic:
Two things to notice:
1. use TO_CHAR(visit_date, 'YYYY-MM-DD') as visit_date
2. There are three possiblities of id arrangement: (id, id-1,id-2), (id-1, id, id+1), (id+2, id+1, id)
3. order by id

* Solution:

```
SELECT id, to_char(visit_date, 'YYYY-MM-DD') AS visit_date, people FROM stadium
WHERE people >=100 AND
(id IN (SELECT id FROM stadium WHERE people >=100) AND
id-1 IN (SELECT id FROM stadium WHERE people>=100) AND
id-2 IN (SELECT id FROM stadium WHERE people>=100)) OR
(id+1 IN (SELECT id FROM stadium WHERE people>=100) AND
id IN (SELECT id FROM stadium WHERE people>=100) AND
id-1 IN (SELECT id FROM stadium WHERE people>=100)) OR
(id+2 IN (SELECT id FROM stadium WHERE people>=100) AND
id+1 IN (SELECT id FROM stadium WHERE people>=100) AND
id IN (SELECT id FROM stadium WHERE people>=100)) 
ORDER BY id;
```

* [Link] (https://leetcode.com/problems/human-traffic-of-stadium/)

