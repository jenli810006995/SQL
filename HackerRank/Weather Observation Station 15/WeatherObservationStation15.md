* Time: july 31 2020

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. 
Round your answer to 4 decimal places.

* Logic: It was a bit confusing to me by "the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345".
Use ORDER DESC LIMIT 1 

* Solution:
```
SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1;
```

* [Link](https://www.hackerrank.com/challenges/weather-observation-station-15/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen)

* [Reference](https://nifannn.github.io/2017/10/23/SQL-Notes-Hackerrank-Weather-Observation-Station-15/)
