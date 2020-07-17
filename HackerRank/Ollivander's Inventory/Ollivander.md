* Time: July 16 2020

* Problem:

Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. 
Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, 
sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

```
Sample Output

9 45 1647 10
12 17 9897 10
1 20 3688 8
15 40 6018 7
19 20 7651 6
11 40 7587 5
10 20 504 5
18 40 3312 3
20 17 5689 3
5 45 6020 2
14 40 5408 1
```

* To-do: 
Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, 
sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

* Logic: Be aware of (select min(coins_needed) from Wands as w2 inner join Wands_Property p2 on ... Created two copies

* Solution:
```
select w.id, p.age, w.coins_needed, w.power from Wands as w join Wands_Property as p
on w.code = p.code
where w.coins_needed = (select min(coins_needed) 
                        from Wands w2 inner join Wands_Property p2
                        on w2.code = p2.code
                        where p2.is_evil = 0 
                        and w.power = w2.power and p.age = p2.age)
order by w.power desc, p.age desc;

```
[Question Link](https://www.hackerrank.com/challenges/harry-potter-and-wands/problem)

[Reference](https://gist.github.com/kangeugine/d7f2ababf4c9a640ee7d00ef1dfca1c5)
