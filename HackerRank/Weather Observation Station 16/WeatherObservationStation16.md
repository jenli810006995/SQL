* Time: Aug. 4 2020

Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.

* Logic:
Because if we are going to select the maximum then we would order by ___ desc limit 1. Thus, here we are going to select the smallest,
we would order by __ limit 1

* Solution:
```
SELECT ROUND(LAT_N,4) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N LIMIT 1;
```

* [Link](https://www.hackerrank.com/challenges/weather-observation-station-16/problem?h_r=next-challenge&h_v=zen)
