--- Use datediff() = 1 to join on two tables

select Weather.id as id
from Weather
join Weather w on datediff(Weather.recordDate, w.recordDate) = 1
and Weather.Temperature > w.Temperature;

