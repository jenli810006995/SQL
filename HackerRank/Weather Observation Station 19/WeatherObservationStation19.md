* Time: July 22 2020

Consider P1(a,c) and p1(b,d) to be two points on a 2D plane where a , c are the respective minimum and maximum values of Northern Latitude (LAT_N) and b, d are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.

* Logic: https://en.wikipedia.org/wiki/Euclidean_distance
The Euclidean distance is the square root of summation_{i = 1 to n} (q_i^2 - p_i^2)

* Solution:

```
select round(sqrt(power(max(LAT_N) - min(LAT_N),2)+power(max(LONG_W) - min(LONG_W),2)), 4) FROM STATION;

```

* [Question Link](https://www.hackerrank.com/challenges/weather-observation-station-19/problem?h_r=next-challenge&h_v=zen)

* [Reference](https://nifannn.github.io/2017/10/23/SQL-Notes-Hackerrank-Weather-Observation-Station-19/)

