* Time: July 26 2020

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

* Logic: Use REGULAR EXPRESSION. 
The syntax for "not start with vowels" is '^[^aeiou]'
The syntax for "not end with vowels" is '.*[^aeiou]$'
and do not forget the "distinct" operator.

* Solution:
```
select distinct(CITY) FROM STATION WHERE CITY REGEXP('^[^aeiou].*[^aeiou]$');
```

* [Question Link](https://www.hackerrank.com/challenges/weather-observation-station-12/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen)
* [Credit](https://nifannn.github.io/2017/10/20/SQL-Notes-Hackerrank-Weather-Observation-Station-12/)

