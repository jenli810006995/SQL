-- create a temp table for vote_cnt for each candidate

with vote_cnt as
(
  select CandidateId,
         count(CandidateId) as vote_cnt
         from Vote
         group by 1
         order by 2 desc limit 1
)

select c.Name as Name
       from Candidate c
       right join
       vote_cnt v
       on c.id = v.CandidateId
       ;
       
       
