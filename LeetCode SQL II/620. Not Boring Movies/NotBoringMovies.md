* Time: July 11 2020

SQL Schema
X city opened a new cinema, many people would like to go to this cinema. The cinema also gives out a poster indicating the movies’ ratings and descriptions.
Please write a SQL query to output movies with an odd numbered ID and a description that is not 'boring'. Order the result by rating.

```
# Write your MySQL query statement below

select * from cinema where (id % 2 <> 0) and not description = 'boring'
order by rating desc

```
