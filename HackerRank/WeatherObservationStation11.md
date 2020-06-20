**Problem:**

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.


**Logic:**
Use subquery for city names starts with AND ends with vowels and exclude them with "not in" statement, and then group by city

**Solution:**

```
select city from station where city not in (select city from station where left(city,1) in 
                                            ('a','e','i','o','u') and right(city, 1) in
                                           ('a','e','i','o','u')) group by city

```
