* Time: July 31 2020

Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. 
Truncate your answer to 4 decimal places.

* Logic: Truncate = Round(, decimal places). Was a bit confused about whther it should be the sum value in that range,
or each LAT_N records in that range to be considered. It proved that it was the former.

* Solution:
```
SELECT ROUND(SUM(LAT_N),4)  FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;
```

* [Link](https://www.hackerrank.com/challenges/weather-observation-station-13/problem?h_r=next-challenge&h_v=zen)

