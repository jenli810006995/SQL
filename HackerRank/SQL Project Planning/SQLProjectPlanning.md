* Time: July 25 2020

You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.

* Logic: Select where start_date not in the end_date, and the end_date not in start_date, and then cross join the start_date and the end_date.
The end_date has to be the minumum and the start_date < the end_date. Use DATEDIFF(,) operator to calculate the duration. Don't forget it is a comma instead of a minus sign.

* Solution:

```
SELECT Start_Date, MIN(End_Date) FROM
(SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) AS s,
(SELECT End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) AS e
WHERE Start_Date < End_Date
GROUP BY Start_Date
ORDER BY DATEDIFF(MIN(End_Date), Start_Date), Start_Date;

```

* [Link](https://www.hackerrank.com/challenges/sql-projects/problem)

* [Credit](https://nifannn.github.io/2017/10/24/SQL-Notes-Hackerrank-Projects/)



