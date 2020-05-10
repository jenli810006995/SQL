**[1179. Reformat Department Table](https://leetcode.com/problems/reformat-department-table/)**

SQL Schema
Table: `Department`
```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| revenue       | int     |
| month         | varchar |
+---------------+---------+
(id, month) is the primary key of this table.
The table has information about the revenue of each department per month.
The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
```

Write an SQL query to reformat the table such that there is a department id column and a revenue column **for each month**.

The query result format is in the following example:
```
Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+

Result table:
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+

Note that the result table has 13 columns (1 for the department id + 12 for the months).
```

* **Logic**

Use Case() statement

* **Solution**

```
# Write your MySQL query statement below

SELECT ID, 
        SUM(CASE WHEN MONTH = "Jan" THEN REVENUE ELSE NULL END) AS Jan_Revenue,
        SUM(CASE WHEN MONTH = "Feb" THEN REVENUE ELSE NULL END) AS Feb_Revenue,
        SUM(CASE WHEN MONTH = "Mar" THEN REVENUE ELSE NULL END) AS Mar_Revenue,
        SUM(CASE WHEN MONTH = "Apr" THEN REVENUE ELSE NULL END) AS Apr_Revenue,
        SUM(CASE WHEN MONTH = "May" THEN REVENUE ELSE NULL END) AS May_Revenue,
        SUM(CASE WHEN MONTH = "Jun" THEN REVENUE ELSE NULL END) AS Jun_Revenue,
        SUM(CASE WHEN MONTH = "Jul" THEN REVENUE ELSE NULL END) AS Jul_Revenue,
        SUM(CASE WHEN MONTH = "Aug" THEN REVENUE ELSE NULL END) AS Aug_Revenue,
        SUM(CASE WHEN MONTH = "Sep" THEN REVENUE ELSE NULL END) AS Sep_Revenue,
        SUM(CASE WHEN MONTH = "Oct" THEN REVENUE ELSE NULL END) AS Oct_Revenue,
        SUM(CASE WHEN MONTH = "Nov" THEN REVENUE ELSE NULL END) AS Nov_Revenue,
        SUM(CASE WHEN MONTH = "Dec" THEN REVENUE ELSE NULL END) AS Dec_Revenue
        from department
        group by id
        order by id

```

