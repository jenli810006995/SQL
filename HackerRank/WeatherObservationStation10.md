**Problem:**

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.


**Logic:**

Use right(city,1) not in ('a','e','i','o','u'). Be careful to use braces.


**Solution:**

```
select distinct(city) from station where right(city,1) not in ('a','e','i','o','u')

```
