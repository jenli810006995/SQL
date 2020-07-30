* Time: July 29 2020

Julia conducted a 15 days of learning SQL contest. The start date of the contest was March 01, 2016 and the end date was March 15, 2016.

Write a query to print total number of unique hackers who made at least 1 submission each day (starting on the first day of the contest), 
and find the hacker_id and name of the hacker who made maximum number of submissions each day. If more than one such hacker has a maximum number of submissions, 
print the lowest hacker_id. The query should print this information for each day of the contest, sorted by the date.

* Logic:
1. print total number of unique hacker_id who has submissions consecutively
2. Use order by count(submission_id) desc, hacker_id limit 1 to find the hacker_id with the maximum number of submissions

* Solution:

```
SELECT submission_date,
(SELECT COUNT(DISTINCT hacker_id) 
FROM submissions s2 
WHERE s2.submission_date = s1.submission_date AND
(SELECT COUNT(DISTINCT s3.submission_date) FROM submissions s3 WHERE s3.hacker_id = s2.hacker_id AND s3.submission_date < s1.submission_date) = DATEDIFF(s1.submission_date, "2016-03-01")),
(SELECT hacker_id FROM submissions s2 WHERE s2.submission_date = s1.submission_date
GROUP BY hacker_id ORDER BY COUNT(submission_id) DESC, hacker_id limit 1)AS TMP,
(SELECT name FROM hackers WHERE hacker_id = TMP)
FROM
(SELECT DISTINCT submission_date FROM submissions) s1
GROUP BY submission_date;
```

* [Link](https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem)
* [Credit](https://github.com/BlakeBrown/HackerRank-Solutions/blob/master/SQL/5_Advanced%20Join/5_15%20Days%20of%20Learning%20SQL/15%20Days%20of%20Learning%20SQL.mysql)

