-- use dense_rank() over() to create a table with highest grade for each student in each course

with cte as
(
    select student_id,
           course_id,
           grade,
           dense_rank() over(partition by student_id order by grade desc, course_id) as rnk -- bc in case of a tie, you should find the course with the smallest course_id
    from Enrollments
 --   group by 1, 2 save some time by excluding this
)

select c.student_id,
       c.course_id,
       c.grade
from cte c
where c.rnk = 1
group by 1, 2
order by 1;

