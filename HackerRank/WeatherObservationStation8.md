**Problem:**

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
as both their first and last characters. Your result cannot contain duplicates.


**Logic:**

Use left(city, 1) and right(city,1) in ('a', 'e', 'i', 'o', 'u')


**Solution:**

```
select city from station where city regexp "[aeiou]" and (city like "a%" or city like "e%"
                                                          or city like "i%" or city like "o%"
                                                          or city like "u%")

```
