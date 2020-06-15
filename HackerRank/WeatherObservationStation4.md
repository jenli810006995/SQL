**Problem:**

Let  be the number N of CITY entries in STATION, and let N' be the number of distinct CITY names in STATION; 
query the value of N-N' from STATION. In other words, find the difference between the total number of CITY entries in the table 
and the number of distinct CITY entries in the table.

**Logic:**
Do not over-think, use count()-count() as N from __ syntax

**Solution:**

```
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS N FROM STATION

```
[*Link*](https://www.hackerrank.com/challenges/weather-observation-station-4/problem)
