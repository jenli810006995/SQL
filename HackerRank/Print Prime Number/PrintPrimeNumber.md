* Time: July 25 2020

Write a query to print all prime numbers less than or equal to 1000. 

Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).

* Logic:
This was new to me: Use select L Prime_Number from (select Level L from Dual connect by Level <= 1000, and do the same thing
to Level M, and then filter M <= L having count(case when L/M = Trunc(L/M) then 'Y' end) = 2, lastly order by L

* Solution:
```
select listagg(Prime_Number, '&') within group(order by Prime_Number) 
from (select L Prime_Number
     from (select Level L
          from Dual 
          connect by Level <= 1000),
         (select Level M
         from Dual
         connect by Level <= 1000)
         where M <= L
         group by L
         having count(case when L/M = Trunc(L/M) then 'Y' end) = 2
         order by L);
```

* [Question Link](https://www.hackerrank.com/challenges/print-prime-numbers/problem)

* [Credit](https://github.com/LiangSun617/SQL_Quizzes_HackerRank)
