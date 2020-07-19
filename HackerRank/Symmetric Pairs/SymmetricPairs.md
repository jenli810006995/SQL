* Time: July 19 2020

You are given a table, Functions, containing two columns: X and Y.


Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X.

```
Sample Output

20 20
20 21
22 23
```

* Logic: Use Union function can exclude duplicated pairs and Exisits function can help reduce nested select statements

* Solution:

```
SELECT f1.X, f1.Y FROM Functions AS f1 
WHERE f1.X = f1.Y AND 
(SELECT COUNT(*) FROM Functions WHERE X = f1.X AND Y = f1.X) > 1
UNION
SELECT f1.X, f1.Y FROM Functions AS f1
WHERE EXISTS(SELECT X, Y FROM Functions WHERE f1.X = Y AND f1.Y = X AND f1.X < X)
ORDER BY X;
```
* [Question Link](https://www.hackerrank.com/challenges/symmetric-pairs/problem?h_r=next-challenge&h_v=zen)

* [Credit](https://nifannn.github.io/2017/10/24/SQL-Notes-Hackerrank-Symmetric-Pairs/)
