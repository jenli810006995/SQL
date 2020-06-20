**Question:**

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that 
comes first when ordered alphabetically.

Sample Input

Let's say that CITY only has four entries: DEF, ABC, PQRS and WXY

Sample Output

ABC 3
PQRS 4

**Logic:** Use union and rownum = 1, and desc order for length(city). To be careful for the syntax is "length", not "len".

**Solution in Oracle:**

```
select * from (select city, length(city) from station order by length(city), city) 
where rownum = 1 union select * from (select city, length(city) from station order by length(city) desc, city) 
where rownum = 1;

```
