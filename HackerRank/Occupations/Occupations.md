* Time: July 13 2020

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Output

```
Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria
```
* Explanation

The first column is an alphabetically ordered list of Doctor names.
The second column is an alphabetically ordered list of Professor names.
The third column is an alphabetically ordered list of Singer names.
The fourth column is an alphabetically ordered list of Actor names.
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.

* Logic: Use user-defined variables and CASE operator, and be aware of the order of occupations

* Solution:

```
set @r1=0, @r2=0, @r3=0, @r4=0;
select min(Doctor), min(Professor), min(Singer), min(Actor) 
from(
  select case when Occupation = "Doctor" then (@r1:=@r1+1)
          when Occupation = "Professor" then (@r2:=@r2+1)
          when Occupation = "Singer" then (@r3:=@r3+1)
          when Occupation = "Actor" then (@r4:=@r4+1) end as RowLine,
    case when Occupation = "Doctor" then Name end as Doctor,
    case when Occupation = "Professor" then Name end as Professor,
    case when Occupation = "Singer" then Name end as Singer,
    case when Occupation = "Actor" then Name end as Actor 
  from OCCUPATIONS 
  order by Name
 )temp
group by RowLine

```
