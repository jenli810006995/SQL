* Time: Aug. 9 2020

There is a table courses with columns: student and class

Please list out all classes which have more than or equal to 5 students.


* Logic: 
1, GROUP BY (class) presents unique class
2, use HAVING COUNT(UNIQUE(student)) >=4

* Solution:
```
SELECT class FROM courses GROUP BY class
HAVING count(DISTINCT(student)) >=4;
```

* [Link](https://leetcode.com/problems/classes-more-than-5-students/submissions/)
