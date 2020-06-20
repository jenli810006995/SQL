**Problem:**

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

**Logic:**
Use negative index in Oracle and convert to lower case

**Solution:**

```
select distinct city from station where lower(substr(city,-1)) in ('a','e','i','o','u');

```
