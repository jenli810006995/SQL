* Time: July 26 2020

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

* Logic: Use Length() oeprator for the length of the city name

* Solution:
```
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;
```
* [Question Link](https://www.hackerrank.com/challenges/weather-observation-station-5/problem?h_r=next-challenge&h_v=zen)
* [Credit](https://nifannn.github.io/2017/10/18/SQL-Notes-Hackerrank-Weather-Observation-Station-5/)

