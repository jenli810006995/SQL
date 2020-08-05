* Time: Aug. 4 2020

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

* Logic: Be careful to check what table the column "POPULATION" is in,
and what table the column "CONTINENT" is in, and then use join for the matchihg key columns

* Solution:
```
SELECT SUM(a.POPULATION) FROM CITY a, COUNTRY b 
WHERE a.COUNTRYCODE = b.CODE
AND b.CONTINENT = "Asia";

```

* [Link](https://www.hackerrank.com/challenges/asian-population/problem)

