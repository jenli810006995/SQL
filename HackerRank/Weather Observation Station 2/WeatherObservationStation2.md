* Time: July 27 2020

Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.

* Logic: Use Round(, decimal point)

* Solution:

```
select round(SUM(LAT_N),2), round(SUM(LONG_W),2) FROM STATION;

```

* [Question Link](https://www.hackerrank.com/challenges/weather-observation-station-2/problem?h_r=next-challenge&h_v=zen)

