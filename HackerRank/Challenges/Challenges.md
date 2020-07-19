* Time: July 17 2020

Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

* Logic: 
1. Be aware of using upper class for SQL operators
2. Using two having clauses for the nested select operators on cnt

* Solution:
```
SELECT c.hacker_id, h.name, count(c.challenge_id) AS cnt FROM Hackers AS h
JOIN Challenges AS c ON h.hacker_id = c.hacker_id
GROUP BY c.hacker_id, h.name
HAVING cnt = (SELECT count(c1.challenge_id) AS cnt FROM Challenges as c1 
             GROUP BY c1.hacker_id ORDER BY count(*) DESC limit 1) OR
    cnt NOT IN (SELECT count(c2.challenge_id) AS cnt FROM Challenges as c2
               GROUP BY c2.hacker_id HAVING c2.hacker_id <> c.hacker_id)
ORDER BY cnt DESC, c.hacker_id;

```

[Question Link](https://www.hackerrank.com/challenges/challenges/problem?h_r=next-challenge&h_v=zen)

[Reference](https://nifannn.github.io/2017/10/24/SQL-Notes-Hackerrank-Challenges/)
