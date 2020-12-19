-- If the number of students is odd, there is no need to change the last one's seat.

select case when mod(id, 2) = 1 and id = counts then id -- last record
            when mod(id, 2) = 1 and id != counts then id + 1
            else id - 1 end as id,
      student
from seat,
     (
     select count(*) as counts from seat
     ) as seat_counts
order by 1
;

-- Link: https://leetcode.com/problems/exchange-seats/
