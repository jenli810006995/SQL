* Time: July 31 2020

Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. 
Truncate your answer to 4 decimal places.

* Logic: Use ROUND(,) for truncating

* Solution:

```
SELECT ROUND(MAX(LAT_N),4) FROM STATION WHERE LAT_N < 137.2345;
```

* [Link](https://www.hackerrank.com/challenges/weather-observation-station-14/problem?h_r=next-challenge&h_v=zen)

