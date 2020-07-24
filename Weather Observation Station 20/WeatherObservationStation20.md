* Time: July 23 2020

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

* Floor function: Return the largest integer value that is equal to or less than the value

* Ceiling: Return the smallest integer value that is greater than or equal to the value

* Logic: Set a variable @rowIndex:= -1, and the median would be between floor(@rowIndex) and ceil(@rowIndex)

* Solution:

```
SET @rowIndex := -1;
SELECT ROUND(AVG(t.LAT_N),4) FROM
(SELECT @rowIndex:= @rowIndex+1 AS rowIndex, s.LAT_N from STATION AS s ORDER BY s.LAT_N) AS t
where t.rowIndex in (floor(@rowIndex/2), ceil(@rowIndex/2));
```

* [Question Link](https://www.hackerrank.com/challenges/weather-observation-station-20/problem?h_r=next-challenge&h_v=zen)

* [Credit](https://nifannn.github.io/2018/06/04/SQL-%E7%AC%94%E8%AE%B0-Hackerrank-Weather-Observation-Station-20/)
