* Time: Aug. 8 2020

Mary is a teacher in a middle school and she has a table seat storing students' names and their corresponding seat ids.

The column id is continuous increment.
 

Mary wants to change seats for the adjacent students.
 

Can you write a SQL query to output the result for Mary?

Note:
If the number of students is odd, there is no need to change the last one's seat.


* Logic: Notice that if the total count is odd, then no need to swamp the last record. 
So create a variable cnt firstly by using count(*) as cnt from seat as a temp table t.
And then use if() statements to swamp the id

* solution:
```
SELECT IF(cnt%2=1 and id=cnt, id, IF(id%2=1, id+1,id-1)) as id, student
from seat, (SELECT COUNT(*) AS cnt FROM seat) AS t ORDER BY id;
```

* [Link](https://leetcode.com/problems/exchange-seats/)
