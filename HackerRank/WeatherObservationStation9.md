** Problem: **

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.


** Logic: **

Use regexp "^[^aeiou]."

** Solution: **

```
select distinct(city) from station where city regexp "^[^aeiou]."

```
