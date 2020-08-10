* Time: Aug. 9 2020

A country is big if it has an area of bigger than 3 million square km or a population of more than 25 million.

Write a SQL solution to output big countries' name, population and area.

* Solution:

```
SELECT name, population, area FROM World
WHERE area > 3000000 OR population > 25000000;
```

* [Link](https://leetcode.com/problems/big-countries/)

