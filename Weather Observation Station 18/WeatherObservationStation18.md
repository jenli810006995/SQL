* Time: July 22 2020

Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

Input Format

The STATION table is described as follows:

* Logic: Manhattan distance Definition: The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
  Be careful of abs(min() - max())
  
* Solution:

```
select round(abs(min(LAT_N) - max(LAT_N))+ abs(min(LONG_W) - max(LONG_W)), 4) from STATION;

```

* [Question Link](https://www.hackerrank.com/challenges/weather-observation-station-18/problem?h_r=next-challenge&h_v=zen)

* [Credit](https://nifannn.github.io/2017/10/23/SQL-Notes-Hackerrank-Weather-Observation-Station-18/)

