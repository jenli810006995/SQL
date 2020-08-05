* Time: Aug. 3 2020

Query the average population for all cities in CITY, rounded down to the nearest integer.

* Logic: The only tricky thing is "rounded down to the nearest integer" here: 
The syntax is FLOOR(). CEIL() would be added one above that.

* Solution:
```
SELECT FLOOR(AVG(POPULATION)) FROM CITY;
```
* [Link](https://www.hackerrank.com/challenges/average-population/problem)
