-- join of students and subjects no need to be have common fields

select s.student_id as student_id,
       s.student_name as student_name,
       sub.subject_name as subject_name,
       count(e.subject_name) as attended_exams
 from Students s
 join Subjects sub
 left join
 Examinations e
 on s.student_id = e.student_id
 and e.subject_name = sub.subject_name
 group by 1, 2, 3
 order by 1, 3;
 
 
 -- https://leetcode.com/problems/students-and-examinations/
 
 
 
 
