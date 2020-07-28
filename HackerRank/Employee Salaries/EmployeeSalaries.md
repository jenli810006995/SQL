* Time: July 27 2020

Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2,000 per month who have been employees for less than 10 months. 
Sort your result by ascending employee_id.

* Logic: Pretty straightforward. Remember sort the result with "Order by Employee_id"

* Solution:
```
SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID;

```

* [Question Link](https://www.hackerrank.com/challenges/salary-of-employees/problem)

