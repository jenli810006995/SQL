* Time: July 19 2020

* Problem:

You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.

Input Format

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker. 

Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge for which the submission belongs to, and score is the score of the submission. 

```
Sample Output

4071 Rose 191
74842 Lisa 174
84072 Bonnie 100
4806 Angela 89
26071 Frank 85
80305 Kimberly 67
49438 Patrick 43
```

* Logic: create a new table with the Max(score) as the score, and join this table with the Hackers table. The sum of the maximum score for each hackers
  would be the score for each hackers in the result table
  
* Solution:

```
SELECT m.hacker_id, h.name, SUM(m.score) AS total_score FROM
(SELECT hacker_id, challenge_id, MAX(score) AS score FROM Submissions
GROUP BY hacker_id, challenge_id) AS m JOIN Hackers AS h
ON m.hacker_id = h.hacker_id
GROUP BY m.hacker_id, h.name
HAVING total_score > 0
ORDER BY total_score DESC, m.hacker_id
```

* [Question Link](https://www.hackerrank.com/challenges/contest-leaderboard/problem?h_r=next-challenge&h_v=zen)

* [Credit](https://nifannn.github.io/2017/10/24/SQL-Notes-Hackerrank-Contest-Leaderboard/)


