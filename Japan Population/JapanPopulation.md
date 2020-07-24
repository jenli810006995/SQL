* Time: July 23 2020

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

* To-Do: remember the double quotes for the countrycode JPN

* Solution: 
```
select sum(population) from CITY where COUNTRYCODE = "JPN";
```

* [Question Link](https://www.hackerrank.com/challenges/japan-population/problem?h_r=next-challenge&h_v=zen)
