* Time: July 11 2020

A country is big if it has an area of bigger than 3 million square km or a population of more than 25 million.

Write a SQL solution to output big countries' name, population and area.

```
/* Write your PL/SQL query statement below */

/* A country is big if it has an area of bigger than 3 million square km or a population of more than 25 million.*/

select name, population, area from World where area > 3000000 or population > 25000000

```
