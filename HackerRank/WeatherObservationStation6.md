**Problem:**

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.


**Logic:**
To use "regexp" in MySql. The syntax is "^[aeiou].*"

**Solution:**
```
select distinct city from station where city regexp "^[aeiou]."

```
