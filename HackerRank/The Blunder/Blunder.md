* Time: July 30 2020

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
but did not realize her keyboard's 0 key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:miscalculation - actual average monthly salaries), and round it up to the next integer.

* Logic: Use REPLACE(str,from_str, to_str)

* Solution:
```
select ceil(avg(salary) - avg(replace(salary, 0 ,'')))
from EMPLOYEES;

```

* [Link](https://www.hackerrank.com/challenges/the-blunder/problem)

* [Credit](https://nifannn.github.io/2017/10/23/SQL-Notes-Hackerrank-The-Blunder/)
