* Time: July 16 2020

* Problem: Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

* To-do:
1. Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge.
2. Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
3. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.


* Logic: Firstly join the Submissions table with Challenges, Difficulty and Hackers tables. Then filter with s.score = d.score, then group by hacker_id, name, and then 
  order by count(*) desc and hacker_id
  
* Sample Output
```
90411 Joe
```
  
 * Solution:
 
 ```
 select h.hacker_id, h.name from Submissions as s join Hackers as h on s.hacker_id = h.hacker_id
                    join Challenges as c on s.challenge_id = c.challenge_id 
                    join Difficulty as d on c.difficulty_level = d.difficulty_level
where s.score = d.score group by h.hacker_id, h.name having count(*) > 1 order by count(*) desc, h.hacker_id;
 ```

* Source: https://nifannn.github.io/2017/10/24/SQL-Notes-Hackerrank-Top-Competitors/
 
[LINK](https://www.hackerrank.com/challenges/full-score/problem)
