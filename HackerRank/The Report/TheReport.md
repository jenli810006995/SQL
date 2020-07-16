* Time: July 15 2020

You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

* Sample Output

```
Maria 10 99
Jane 9 81
Julia 9 88 
Scarlet 8 78
NULL 7 63
NULL 7 68
```

Note

Print "NULL"  as the name if the grade is less than 8.

Explanation

Consider the following table with the grades assigned to the students:

* Logic: Firslt, use "IF" oprerator for the names of the grade < 8; secondly, order by grades firslt, 
and then by name, and then by marks

* Solution:

```
select IF(g.Grade < 8, 'NULL', s.Name), g.Grade, s.Marks from Students 
as s join Grades as g on s.Marks between g.Min_mark and g.Max_Mark order by g.Grade desc, s.Name, s.Marks;

```

* Source: https://nifannn.github.io/2017/10/24/SQL-Notes-Hackerrank-The-Report/

