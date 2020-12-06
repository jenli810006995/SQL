--- Use datediff() = 1 to join on two tables

select Weather.id as id
from Weather
join Weather w on datediff(Weather.recordDate, w.recordDate) = 1
and Weather.Temperature > w.Temperature;


--- one of the fastest solution

select w1.id as id
from Weather w1, Weather w2
where w1.Temperature > w2.Temperature
and subdate(w1.recordDate, 1) = w2.recordDate;

